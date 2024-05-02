#!/usr/bin/env bash
java \
    -XX:MaxRAMPercentage=40.0 \
    -XX:+UseG1GC -XX:MaxGCPauseMillis=100 \
    -XX:CompileThreshold=1000 \
    -XX:C1CompileThreshold=1000 \
    -XX:C2CompileThreshold=1000 \
    -XX:FalconCompileThreshold=1000 \
    -jar fabric-server-launch.jar nogui