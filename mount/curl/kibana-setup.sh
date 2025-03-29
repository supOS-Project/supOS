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

#!/bin/sh
# 设置 5 分钟的超时时间 (300 秒)

timeout 300 sh -c '
until curl -s -o /dev/null -w "%{http_code}" http://kibana:5601/api/status | grep -q "200"; do
  echo "Waiting for Kibana to be ready..."
  sleep 10
done

while true; do
  echo "Attempting to create Data View..."

  response=$(curl -s -o /dev/null -w "%{http_code}" -X POST http://kibana:5601/api/data_views/data_view \
  -H "Content-Type: application/json" \
  -H "Elastic-Api-Version: 2023-10-31" \
  -H "kbn-xsrf: true" \
  -d '{
    "data_view": {
      "title": "filebeat-7.10.2",
      "timeFieldName": "@timestamp",
      "fieldAttrs": {
        "container.name": {
          "customLabel": "Container Name",
          "count": 100
        },
        "message": {
          "customLabel": "Message",
          "count": 100
        }
      }
    }
  }')

  if [ "$response" -eq 200 ]; then
    echo "Data View created successfully!"
    break
  else
    echo "Failed to create Data View, retrying in 20 seconds..."
    sleep 20
  fi
done
'

if [ $? -eq 124 ]; then
  echo "Script timed out after 5 minutes"
fi