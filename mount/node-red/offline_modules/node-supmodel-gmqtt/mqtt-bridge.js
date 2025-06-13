
const q = require('./lib/queue');

class MqttBridge {

    queue;

    invalidMsg = "supmodel.error_mqtt_data_not_valid";

    timer;

    
    constructor(node, interval) {
        this.queue = q.newQueue();
        // 往平台推送数据的topic
        let plantTopic = `4174348a-9222-4e81-b33e-5d72d2fd7f1e`

        this.timer = setInterval(() => {
            let payloads = aggregate(this.queue);
            if (payloads.length > 0) {
                let newMsg = {
                    "topic": plantTopic,
                    "payload": payloads
                }
                node.send([newMsg, null])
            }
        }, interval); 

        console.log(new Date(), `: MQTT定时推送任务开启, 节点ID=${node.id}`)
    }

    refreshMappings(deviceName, newMapping) {
        
    }

    /**
     * 输入数据和平台数据格式要保持一致
     * @param {} inputMsg 
     * {
     *   "values": [
     *   {
     *       "name": "string", // 位号名称
     *       "value": // json: RtdValue 位号实时值
     *       {
     *           "timeStamp": 1716894556000, 
     *           "quality": 0, // int, 质量码，0-标识正常值
     *           "value": 12, // 值，数字、字符串或布尔，输入的值与type对应
     *           "type": 1 /* int, 位号值类型，与type一致。1: int; 2: double; 3: bool; 4: string
     *       }
     *   }
     *   ]
     * }
     * @returns 
     */
    receive(inputMsg) {
        // 校验数据格式
        let payload = inputMsg.payload;
        // if (this.invalidMsg) {
        //     this.invalidMsg = isValid(payload);
        // }
        // if (this.invalidMsg)  {
        //     return this.invalidMsg;
        // }
        if (this.queue) {
            this.queue.offer(payload);
        }
    }

    destroy(nodeId) {
        clearInterval(this.timer);
        this.queue = null;
        console.log(new Date(), `: MQTT节点被销毁, 节点ID=${nodeId}`)
    }
}

function isValid(payload) {
    var values = payload.values;
    if (!values || !Array.isArray(values) || values.length == 0) {
        return "supmodel.error_mqtt_values_empty";
    }
    if (values[0].name !== undefined 
        && values[0].value.timeStamp !== undefined
        && values[0].value.quality !== undefined
        && values[0].value.value !== undefined
        && values[0].value.type !== undefined) {

            return "";
    }
    return "supmodel.error_mqtt_data_not_valid";
}

function aggregate(queue) {
    let aggregations = []
    
    for (let i = 0; i < 1000; i++) {
        let payload = queue.poll();
        if (payload == null) {
            break;
        }
        let data = transfer(payload, model);
        aggregations.push(...data);
    }
    return aggregations;
}

function transfer(payload, model) {

    let values = [];
    let value = {
        "alias": model.alias,
        "data": payload
    }
    values.push(value);
        
    return values;
}

function newMqttBridge(node, device, interval) {
    return new MqttBridge(node, device, interval);
}

module.exports = { newMqttBridge }; // 导出函数