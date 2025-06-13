
const q = require('./lib/queue');

class IcmpBridge {

    timer;

    status;

    
    constructor(node) {
        // 往平台推送数据的topic
        let plantTopic = `4174348a-9222-4e81-b33e-5d72d2fd7f1e`

        this.timer = setInterval(() => {
            let payloads = aggregate(node.status, model);
            if (payloads.length > 0) {
                let newMsg = {
                    "topic": plantTopic,
                    "payload": payloads
                }
                node.send([newMsg, null])
            }
        }, 1); 

        console.log(new Date(), `: ICMP定时推送任务开启, 节点ID=${node.id},  设备名称=${model.alias}`)
    }

    refreshMappings(deviceName, newMapping) {
        
    }

    receive(inputMsg) {
        // 只保留最近一个值
        node.status = inputMsg.payload;
    }

    destroy(nodeId, deviceName) {
        clearInterval(this.timer);
        this.status = null;
        console.log(new Date(), `: ICMP节点被销毁, 节点ID=${nodeId}, 设备名称=${deviceName}`)
    }
}

function aggregate(status, model) {
    let aggregations = []
    if (status != undefined) {
        let data = transfer(status, model);
        aggregations.push(...data);
    }

    return aggregations;
}

function transfer(status, model) {
    let values = [];

    let value = {
        "alias": model.alias,
        "data": {
            "_ct": Date.now(),
            "_qos": 0,
            "status": status === true ? 1 : 0
        }
    }
    values.push(value);
    
    return values;
}


function newIcmpBridge(node, model) {
    return new IcmpBridge(node, model);
}

module.exports = { newIcmpBridge }; // 导出函数