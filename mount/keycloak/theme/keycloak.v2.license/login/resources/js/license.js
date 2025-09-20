import { request } from "./request.js";

let state;
let isOnline;
let filePath;
let isLicenseExpired;

// 获取国际化文本
const getMessage = (key) => {
  const i18nContainer = document.getElementById("i18n-messages");
  if (i18nContainer && i18nContainer.dataset[key]) {
    return i18nContainer.dataset[key];
  }
  return "";
};

// 根据state自动设置激活的tab
const setActiveTabByState = (type) => {
  const tabItems = document.querySelectorAll(".tabItem");
  const tabContents = document.querySelectorAll(".tabContent");

  // 移除所有激活状态
  tabItems.forEach((item) => item.classList.remove("active"));
  tabContents.forEach((content) => content.classList.remove("active"));

  document
    .querySelector(`.tabItem[data-type="${type}"]`)
    .classList.add("active");
  document.getElementById(type).classList.add("active");
};

// 上传
const initUpload = () => {
  const uploadBox = document.getElementById("uploadBox");
  const fileInput = document.getElementById("fileInput");

  const uploadFile = (file) => {
    filePath = "";
    if (!file) return;
    const formData = new FormData();
    formData.append("file", file);
    request("/inter-api/supos/license/v2c/upload", {
      method: "POST",
      body: formData,
    })
      .then((filePath) => {
        // 激活未授权的，授权后刷新页面
        if (state === 2) {
          window.location.reload();
          return;
        }
        document.getElementById("uploadFileName").innerHTML = filePath;
        document.getElementById("uploadFileName").title = filePath;
        setActiveTabByState("activate");
      })
      .catch((error) => {
        showErrorMsg(error.message);
        filePath = "";
        document.getElementById("uploadFileName").innerHTML = "";
        document.getElementById("uploadFileName").title = "";
      })
      .finally(() => {
        fileInput.value = "";
      });
  };

  uploadBox.addEventListener("click", function () {
    fileInput.click();
  });

  uploadBox.addEventListener("mouseover", function () {
    uploadBox.classList.add("hoverEffect");
  });

  uploadBox.addEventListener("mouseout", function () {
    uploadBox.classList.remove("hoverEffect");
  });

  uploadBox.addEventListener("dragover", function (event) {
    event.preventDefault();
    event.dataTransfer.dropEffect = "copy";
  });

  uploadBox.addEventListener("drop", function (event) {
    event.preventDefault();
    event.dataTransfer.dropEffect = "";
    const file = event.dataTransfer.files[0];
    uploadFile(file);
  });

  fileInput.addEventListener("change", function (event) {
    const file = event.target.files[0];
    uploadFile(file);
  });
};

const showErrorMsg = (msg) => {
  const errorBox = document.getElementById("errorBox");
  const errorMsgContent = document.getElementById("errorMsgContent");
  errorMsgContent.innerHTML = msg;
  errorBox.classList.toggle("active");
  setTimeout(() => {
    errorBox.classList.toggle("active");
  }, 3000);
};

// 表单验证函数
const validateForm = (ignoreItems = []) => {
  const formItems = document.querySelectorAll(".formItem");
  let isValid = true;

  // 重置所有错误状态
  formItems.forEach((item) => item.classList.remove("error"));

  // 验证必填字段
  document.querySelectorAll(".formItem.required").forEach((formItem) => {
    const input = formItem.querySelector("input");
    const name = input.getAttribute("name");

    if ((!input || !input.value.trim()) && !ignoreItems.includes(name)) {
      formItem.classList.add("error");
      isValid = false;
    }
  });

  return isValid;
};

const getFormValues = () => {
  const data = {};
  document.querySelectorAll(".formItem").forEach((formItem) => {
    const input = formItem.querySelector("input");
    const name = input.getAttribute("name");
    if (!name) return;
    data[name] = input.value;
  });
  return data;
};

const initLicense = async () => {
  const downloadBtn = document.getElementById("downloadBtn");
  const questionIcon = document.querySelector(".questionIcon");
  const codeTip = document.querySelector(".codeTip");
  const tabItems = document.querySelectorAll(".tabItem");
  const verifyCodeFormItem = document.getElementById("verifyCodeFormItem");

  setActiveTabByState(
    [0, 2].includes(state) || isLicenseExpired ? "authority" : "activate"
  );
  initUpload();

  if (!verifyCodeFormItem) return;

  // 离线需要认证码
  if (!isOnline) {
    verifyCodeFormItem.style.display = "flex";
    // 获取认证码
    document
      .getElementById("getCodeBtn")
      .addEventListener("click", function () {
        if (!validateForm(["verifyCode"])) return;
        const formValues = getFormValues();

        request("/inter-api/supos/license/register/url")
          .then((data) => {
            document.getElementById("codeErrorMsg").style.display = "block";
            document.getElementById("qrImg").style.display = "block";
            document.getElementById("qrImg").innerHTML = "";

            // 处理 URL
            let finalUrl = `${data}&username=${encodeURIComponent(
              formValues.username
            )}&projectName=${encodeURIComponent(
              formValues.projectName
            )}&businessNo=${encodeURIComponent(formValues.businessNo)}`;

            new QRCode("qrImg", {
              text: finalUrl,
              width: 120,
              height: 120,
              correctLevel: 3,
            });
          })
          .catch((error) => {
            showErrorMsg(error.message);
          });
      });
  } else {
    verifyCodeFormItem.parentNode.removeChild(verifyCodeFormItem);
  }

  // 下载
  downloadBtn.addEventListener("click", function () {
    window.open("/inter-api/supos/license/c2v/download");
  });

  // 输入框实时验证
  document.querySelectorAll(".formItem.required input").forEach((input) => {
    input.addEventListener("input", function (e) {
      const formItem = this.closest(".formItem");
      formItem.classList.remove("error");
      if (!e.target.value) {
        formItem.classList.add("error");
      }
    });
  });

  // 确认按钮点击事件
  document.getElementById("submitBtn").addEventListener("click", function () {
    if (!validateForm()) return;

    const data = getFormValues();

    request("/inter-api/supos/license/verify", {
      method: "POST",
      body: JSON.stringify(data),
    })
      .then(() => {
        window.location.reload();
      })
      .catch((error) => {
        showErrorMsg(error.message);
      });
  });

  // 问号tip
  questionIcon.addEventListener("mouseover", function () {
    codeTip.style.display = "block";
  });

  questionIcon.addEventListener("mouseout", function () {
    codeTip.style.display = "none";
  });

  // tabs功能
  tabItems.forEach((item) => {
    item.addEventListener("click", function () {
      const tabId = this.getAttribute("data-type");
      const activeTab = document
        .querySelector(".tabItem.active")
        ?.getAttribute("data-type");

      // 已授权的不能切换到许可授权了
      if (tabId === "authority" && tabId !== activeTab) {
        showErrorMsg(getMessage("hadauthoritied"));
        return;
      }

      // 未授权时，需要先授权
      if (tabId === "activate" && tabId !== activeTab) {
        showErrorMsg(getMessage("pleaseuploadv2cfile"));
        return;
      }

      // setActiveTabByState(tabId);
    });
  });
};

const loadingWrap = document.getElementById("loadingWrap");
loadingWrap.style.display = "flex";

request(`/inter-api/supos/license/state`)
  .then((data) => {
    state = data.state;
    isOnline = data.online;
    isLicenseExpired = data.isLicenseExpired;

    // 0-未授权未激活  1-已授权未激活 2-未授权已激活（一般不会有）3-已激活已授权
    if ([0, 1, 2].includes(state)) {
      document.getElementById("licenseBox").style.display = "block";
      document.getElementById("main").style.display = "none";
      if (data.msg) {
        document.getElementById("errorGlobal").classList.toggle("active");
        document.getElementById("errorGlobalMsgContent").innerHTML = data.msg;
        // setTimeout(() => {
        //   document.getElementById("errorGlobal").classList.toggle("active");
        // }, 1000);
      }
      if (isLicenseExpired) {
        document.getElementById("tabs").style.display = "none";
        document.getElementById("updateAuthorization").style.display = "block";
      } else {
        document.getElementById("tabs").style.display = "flex";
        document.getElementById("updateAuthorization").style.display = "none";
      }
      initLicense();
    } else {
      document.getElementById("licenseBox").style.display = "none";
      document.getElementById("main").style.display = "block";
      request(`/inter-api/supos/license/deadline`).then((res) => {
        if (res?.reminderTip) {
          document.getElementById("warningBox").style.display = "flex";
          document.getElementById("warningMsgContent").innerHTML =
            res.reminderTip;
        }
      });
    }
    loadingWrap.style.display = "none";
    loadingWrap.parentNode.removeChild(loadingWrap);
  })
  .catch(() => {
    document.getElementById("licenseBox").style.display = "block";
    document.getElementById("main").style.display = "none";
    loadingWrap.style.display = "none";
    loadingWrap.parentNode.removeChild(loadingWrap);
    // if (data.msg) {
    //   document.getElementById("errorGlobal").classList.toggle("active");
    //   document.getElementById("errorGlobalMsgContent").innerHTML = data.msg;
    // }
  });
