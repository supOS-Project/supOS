#!/bin/bash

activeServices="nodered,keycloak,kong,postgresql,tsdb,chat2db,portainer"
profileCommand=""
OUTPUT_FILE=$SCRIPT_DIR/global/active-services.txt
# ENV_TMP=$SCRIPT_DIR/../.env.tmp

loopConfirmA() {
    while true; do
        read -p "$1" choice
        choice=$(echo "$choice" | tr -d ' ' | tr '[:upper:]' '[:lower:]')
        case $choice in
            'y'|'Y'|'n'|'N'|'')
                echo "$choice"
                break
                ;;
            *)
                ;;
        esac
    done
}

loopConfirmB() {
    while true; do
        read -p "$1" choice
        choice=$(echo "$choice" | tr -d ' ' | tr '[:upper:]' '[:lower:]')
        case $choice in
            1|2|'')
                echo "$choice"
                break
                ;;
            *)
                ;;
        esac
    done
}


chooseProfile1() {

    echo -e "\n"
    if [[ "$LANGUAGE" == "zh-CN" ]]; then
        askyou=$(loopConfirmB "您是否需要自定义安装哪些服务? [1] 不，使用默认配置即可(default) [2] 是的，我要选择 : ")
    else 
        askyou=$(loopConfirmB "Do you need to customize which services to install? [1] No, use defaults(default) [2] Yes : ")
    fi
    askyou=${askyou:-1}
    if [[ $askyou == 1 ]]; then
        profileCommand="--profile fuxa --profile grafana --profile tsdb --profile emqx --profile eventflow "
        activeServices+=",fuxa,grafana,tsdb,emqx,eventflow"
    else 
        choicefuxa=$(loopConfirmA "Step 1: fuxa? [y/n]: ")
        choicefuxa=${choicefuxa:-Y}
        if [[ $choicefuxa =~ ^[Yy] ]]; then
            profileCommand="--profile fuxa "
            activeServices+=",fuxa"
        fi
        choicegrafana=$(loopConfirmA "Step 2: grafana? [y/n]: ")
        choicegrafana=${choicegrafana:-Y}
        if [[ $choicegrafana =~ ^[Yy] ]]; then
            profileCommand+="--profile grafana "
            activeServices+=",grafana"
        fi
        choiceeventflow=$(loopConfirmA "Step 3: eventflow? [y/n]: ")
        choiceeventflow=${choiceeventflow:-Y}
        if [[ $choiceeventflow =~ ^[Yy] ]]; then
            profileCommand+="--profile eventflow "
            activeServices+=",eventflow"
        fi
        choiceminio=$(loopConfirmA "Step 4: minio? [y/n]: ")
        choiceminio=${choiceminio:-Y}
        if [[ $choiceminio =~ ^[Yy] ]]; then
            profileCommand+="--profile minio "
            activeServices+=",minio"
        fi

        # if [[ "$LANGUAGE" == "zh-CN" ]]; then
        #     choicemqtt=$(loopConfirmB "Step 5: 请选择MQTT插件: [1] emqx(default)  [2] gmqtt : ")
        # else 
        #     choicemqtt=$(loopConfirmB "Step 5: Please choose MQTT plugin: [1] emqx(default)  [2] gmqtt : ")
        # fi
        # choicemqtt=${choicemqtt:-1}
        # if [[ $choicemqtt == 1 ]]; then
        #     profileCommand+="--profile emqx "
        #     activeServices+=",emqx"
        # else 
        #     profileCommand+="--profile gmqtt "
        #     activeServices+=",gmqtt"
        # fi
        profileCommand+="--profile emqx "
        activeServices+=",emqx"

    fi 
    echo $activeServices > $OUTPUT_FILE
    echo $profileCommand >> $OUTPUT_FILE

    echo $profileCommand;
}

chooseProfile2() {

    echo -e "\n"
    if [[ "$LANGUAGE" == "zh-CN" ]]; then
        askyou=$(loopConfirmB "您是否需要自定义安装哪些服务? [1] 不，使用默认配置即可(default) [2] 是的，我要选择 : ")
    else 
        askyou=$(loopConfirmB "Do you need to customize which services to install? [1] No, use defaults(default) [2] Yes : ")
    fi
    askyou=${askyou:-1}
    if [[ $askyou == 1 ]]; then
        profileCommand="--profile fuxa --profile grafana --profile tsdb --profile emqx --profile eventflow "
        activeServices+=",fuxa,grafana,tsdb,emqx,eventflow"
    else 
        choicefuxa=$(loopConfirmA "Step 1: fuxa? [y/n]: ")
        choicefuxa=${choicefuxa:-Y}
        if [[ $choicefuxa =~ ^[Yy] ]]; then
            profileCommand="--profile fuxa "
            activeServices+=",fuxa"
        fi

        choicegrafana=$(loopConfirmA "Step 2: grafana? [y/n]: ")
        choicegrafana=${choicegrafana:-Y}
        if [[ $choicegrafana =~ ^[Yy] ]]; then
            profileCommand+="--profile grafana "
            activeServices+=",grafana"
        fi

        choiceeventflow=$(loopConfirmA "Step 3: eventflow? [y/n]: ")
        choiceeventflow=${choiceeventflow:-Y}
        if [[ $choiceeventflow =~ ^[Yy] ]]; then
            profileCommand+="--profile eventflow "
            activeServices+=",eventflow"
        fi

        choiceminio=$(loopConfirmA "Step 4: minio? [y/n]: ")
        choiceminio=${choiceminio:-Y}
        if [[ $choiceminio =~ ^[Yy] ]]; then
            profileCommand+="--profile minio "
            activeServices+=",minio"
        fi

        choiceelk=$(loopConfirmA "Step 5: elasticsearch, kibana, filebeat? [y/n]: ")
        choiceelk=${choiceelk:-Y}
        if [[ $choiceelk =~ ^[Yy] ]]; then
            profileCommand+="--profile elk "
        fi

        # if [[ "$LANGUAGE" == "zh-CN" ]]; then
        #     choicemqtt=$(loopConfirmB "Step 6: 请选择MQTT插件: [1] emqx(default)  [2] gmqtt : ")
        # else 
        #     choicemqtt=$(loopConfirmB "Step 6: Please choose MQTT plugin: [1] emqx(default)  [2] gmqtt : ")
        # fi
        # choicemqtt=${choicemqtt:-1}
        # if [[ $choicemqtt == 1 ]]; then
        #     profileCommand+="--profile emqx "
        #     activeServices+=",emqx"
        # else 
        #     profileCommand+="--profile gmqtt "
        #     activeServices+=",gmqtt"
        # fi
        profileCommand+="--profile emqx "
        activeServices+=",emqx"
    fi 
    
    echo $activeServices > $OUTPUT_FILE
    echo $profileCommand >> $OUTPUT_FILE

    echo $profileCommand;
}
