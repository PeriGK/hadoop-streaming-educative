#!/usr/bin/env bash
/entrypoint.sh
hadoop fs -mkdir -p /user/root/src
hadoop fs -copyFromLocal /src /user/root/src

