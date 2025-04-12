#!/bin/bash

activeServices="emqx,nodered,hasura,keycloak,kong,postgresql,gitea,chat2db,elasticsearch,portainer"
profileCommand=""
OUTPUT_FILE=$SCRIPT_DIR/global/active-services.txt
# ENV_TMP=$SCRIPT_DIR/../.env.tmp

chooseProfile1() {

    echo -e "\n"
    if [[ "$LANGUAGE" == "zh-CN" ]]; then
        read -p "您是否需要自定义安装哪些服务? [1] 不，使用默认配置即可(默认) [2] 是的，我要选择" askyou
    else 
        read -p "Do you need to customize which services to install? [1] No, use defaults(default) [2] Yes" askyou
    fi
    askyou=${askyou:-1}
    if [[ $askyou == 1 ]]; then
        profileCommand="--profile fuxa --profile grafana --profile minio --profile tdengine "
        activeServices+=",fuxa,grafana,minio,tdengine"
    else 
        read -p "Step 1: fuxa? [y/n]: " choicefuxa
        choicefuxa=${choicefuxa:-Y}
        if [[ $choicefuxa =~ ^[Yy] ]]; then
            profileCommand="--profile fuxa "
            activeServices+=",fuxa"
        fi

        read -p "Step 2: grafana? [y/n]: " choicegrafana
        choicegrafana=${choicegrafana:-Y}
        if [[ $choicegrafana =~ ^[Yy] ]]; then
            profileCommand+="--profile grafana "
            activeServices+=",grafana"
        fi

        read -p "Step 3: minio? [y/n]: " choiceminio
        choiceminio=${choiceminio:-Y}
        if [[ $choiceminio =~ ^[Yy] ]]; then
            profileCommand+="--profile minio "
            activeServices+=",minio"
        fi

        if [[ "$LANGUAGE" == "zh-CN" ]]; then
            read -p "Step 4: 请选择一种时序数据库: [1] TDEngine(默认)  [2] TimescaleDB" choicedb
        else 
            read -p "Step 4: Please select a time-series database: [1] TDEngine(default)  [2] TimescaleDB" choicedb
        fi
        choicedb=${choicedb:-1}
        if [[ $choicedb == 1 ]]; then
            profileCommand+="--profile tdengine "
            activeServices+=",tdengine"
            # echo "PG_IMAGE=postgres:17" >> $ENV_TMP
        else 
            profileCommand+="--profile timescale "
            activeServices+=",timescale"
            # echo "PG_IMAGE=timescale/timescaledb:2.18.2-pg17" >> $ENV_TMP
        fi

    fi 
}

chooseProfile2() {

    echo -e "\n"
    if [[ "$LANGUAGE" == "zh-CN" ]]; then
        read -p "您是否需要自定义安装哪些服务? [1] 不，使用默认配置即可(默认) [2] 是的，我要选择" askyou
    else 
        read -p "Do you need to customize which services to install? [1] No, use defaults(default) [2] Yes" askyou
    fi
    askyou=${askyou:-1}
    if [[ $askyou == 1 ]]; then
        profileCommand="--profile fuxa --profile grafana --profile minio --profile tdengine "
        activeServices+=",fuxa,grafana,minio,tdengine"
    else 
        read -p "Step 1: fuxa? [y/n]: " choicefuxa
        choicefuxa=${choicefuxa:-Y}
        if [[ $choicefuxa =~ ^[Yy] ]]; then
            profileCommand="--profile fuxa "
            activeServices+=",fuxa"
        fi

        read -p "Step 2: grafana? [y/n]: " choicegrafana
        choicegrafana=${choicegrafana:-Y}
        if [[ $choicegrafana =~ ^[Yy] ]]; then
            profileCommand+="--profile grafana "
            activeServices+=",grafana"
        fi

        read -p "Step 3: minio? [y/n]: " choiceminio
        choiceminio=${choiceminio:-Y}
        if [[ $choiceminio =~ ^[Yy] ]]; then
            profileCommand+="--profile minio "
            activeServices+=",minio"
        fi
        read -p "Step 4: elasticsearch, kibana, filebeat? [y/n]: " choiceelk
        choiceelk=${choiceelk:-Y}
        if [[ $choiceelk =~ ^[Yy] ]]; then
            profileCommand+="--profile elk "
        fi

        if [[ "$LANGUAGE" == "zh-CN" ]]; then
            read -p "Step 5: 请选择一种时序数据库: [1] TDEngine(默认)  [2] TimescaleDB" choicedb
        else 
            read -p "Step 5: Please select a time-series database: [1] TDEngine(default)  [2] TimescaleDB" choicedb
        fi
        choicedb=${choicedb:-1}
        if [[ $choicedb == 1 ]]; then
            profileCommand+="--profile tdengine "
            activeServices+=",tdengine"
            # echo "PG_IMAGE=postgres:17" >> $ENV_TMP
        else 
            profileCommand+="--profile timescale "
            activeServices+=",timescale"
            # echo "PG_IMAGE=timescale/timescaledb:2.18.2-pg17" >> $ENV_TMP
        fi

    fi 
    
    echo $activeServices > $OUTPUT_FILE
    echo $profileCommand >> $OUTPUT_FILE

    echo $profileCommand;
}
