#!/bin/bash
# kong config  db_export  /tmp/kong_config.yml  && docker cp kong:/tmp/kong_config.yml .

kong migrations bootstrap 

INIT_FILE=/usr/local/kong/init.txt
if [ ! -f "$INIT_FILE" ]; then
    kong config db_import /etc/kong/kong_config.yml
fi

if pgrep -f "nginx: master process" > /dev/null; then
    # 获取 Nginx Master 进程的 PID
    MASTER_PID=$(pgrep -f "nginx: master process" | head -n 1)
    
    echo "Nginx 正在运行（Master PID: $MASTER_PID），正在终止..."
    
    # 发送 TERM 信号优雅终止（等待完成当前请求）
    kill -TERM $MASTER_PID
    sleep 2  # 等待进程处理退出逻辑

    # 检查是否终止成功，若失败则强制终止
    if pgrep -f "nginx: master process" > /dev/null; then
        echo "优雅终止失败，尝试强制终止..."
        kill -9 $MASTER_PID
    fi

    echo "Nginx 进程已终止"
else
    echo "Nginx 未运行"
fi

pid_path="/usr/local/kong/pids/nginx.pid"

if [ -f "$pid_path" ]; then
    rm -f "$pid_path"  # 强制删除文件，不提示
    echo "nginx.pid文件已删除"
fi
echo "init" > $INIT_FILE
kong start
