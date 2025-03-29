#!/bin/sh

# 设定最大运行时间为300秒（5分钟）
max_time=300
elapsed_time=0
interval=10

# 循环直到成功或超时
while [ "$elapsed_time" -lt "$max_time" ]; do
    # 调用 curl 发送 POST 请求并将响应存储到 response 变量
    response=$(curl -X POST 'http://kibana:5601/elastic/home/api/saved_objects/_import' \
      -H 'kbn-xsrf: true' \
      -H 'Accept: */*' \
      -H 'Content-Type: multipart/form-data' \
      -H 'kbn-version: 7.10.2' \
      --form file=@/usr/local/bin/export.ndjson \
      --insecure)

    # 检查响应中是否包含 "success": true
    if echo "$response" | grep -q '"success":true'; then
        echo "Import successful!"
        exit 0  # 成功后退出脚本
    fi

    # 记录失败并等待
    echo "Failed. Retrying in $interval seconds..."
    sleep $interval

    # 更新已运行的时间
    elapsed_time=$((elapsed_time + interval))
done

echo "Import failed after 5 minutes."
exit 1  # 超时后退出，状态码为1表示失败