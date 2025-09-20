#!/bin/sh

MEM_OPTS="-Xms2g -Xmx3g -Xmn1g -XX:+HeapDumpOnOutOfMemoryError -XX:HeapDumpPath=/logs -XX:NativeMemoryTracking=detail -XX:SurvivorRatio=6 -Dio.netty.noPreferDirect=true -XX:MaxMetaspaceSize=256m -XX:-UseAdaptiveSizePolicy -XX:MaxDirectMemorySize=256m"

JAVA_OPTS="-Dfile.encoding=utf-8 -Dsink.thread=8 -Duser.timezone=UTC -Delk.enabled=false -Djava.security.egd=file:/dev/./urandom -Dlogging.file.name=./logs/supos.log -Dpg.jdbcUrl=jdbc:postgresql://tsdb:5432/postgres -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=*:8000"

ADD_OPEN="--add-opens=java.base/sun.nio.ch=ALL-UNNAMED --add-exports=java.base/sun.nio.ch=ALL-UNNAMED --add-opens=java.base/java.lang=ALL-UNNAMED  --add-opens=java.base/java.lang.reflect=ALL-UNNAMED --add-opens=java.base/java.io=ALL-UNNAMED  --add-opens=java.base/java.util=ALL-UNNAMED --add-opens=java.base/jdk.internal.ref=ALL-UNNAMED --add-exports=java.base/jdk.internal.ref=ALL-UNNAMED --add-opens=java.base/java.nio=ALL-UNNAMED --add-exports=java.base/java.nio=ALL-UNNAMED "

exec java $MEM_OPTS $JAVA_OPTS $ADD_OPEN -jar /app.jar  # exec 使 Java 成为 PID 1