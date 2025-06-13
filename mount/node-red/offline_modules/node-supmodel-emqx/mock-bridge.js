
const q = require('./lib/queue');

class MockDataBridge {

    queue;

    timer;

    constructor(node, alias) {
        this.queue = q.newQueue();
        // 往平台推送数据的topic
        let plantTopic = `4174348a-9222-4e81-b33e-5d72d2fd7f1e`

        this.timer = setInterval(() => {
            let payloads = aggregate(this.queue, alias);
            if (payloads.length > 0) {
                let newMsg = {
                    "topic": plantTopic,
                    "payload": payloads
                }
                node.send([newMsg, null])
            }
        }, 5000); // mock数据5秒推送一次

        node.log(`Mock Data定时推送任务开启, 节点ID=${node.id}`)
    }

    refreshMappings(deviceName, newMapping) {
        
    }

    receive(inputMsg) {
        let payload = inputMsg.payload;
        if (this.queue) {
            this.queue.offer(payload);
        }
    }

    destroy(nodeId) {
        clearInterval(this.timer);
        this.queue = null;
        console.log(new Date(), `: Mock Data节点被销毁, 节点ID=${nodeId}`)
    }
}

function aggregate(queue, alias) {
    let aggregations = []
    
    for (let i = 0; i < 1000; i++) {
        let payload = queue.poll();
        if (payload == null) {
            break;
        }
        let data = transfer(payload, alias);
        aggregations.push(...data);
    }
    return aggregations;
}

function transfer(payload, alias) {

    let values = [];
    let value = {
        "alias": alias,
        "data": payload
    }
    values.push(value);
        
    return values;
}

function newMockDataBridge(node, alias) {
    return new MockDataBridge(node, alias);
}

module.exports = { newMockDataBridge }; // 导出函数