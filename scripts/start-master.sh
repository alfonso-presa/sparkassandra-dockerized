#!/usr/bin/env bash
export SPARK_MASTER_IP=`cat /etc/hosts | grep $(hostname) | awk '{print $1}'`
export SPARK_LOCAL_IP=$SPARK_MASTER_IP
/usr/local/spark/sbin/start-master.sh --properties-file /spark-defaults.conf -i $SPARK_LOCAL_IP "$@"
/bin/bash
