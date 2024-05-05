#!/usr/bin/env bash
java \
    -XX:MaxRAMPercentage=40.0 \
    -XX:+UseG1GC -XX:MaxGCPauseMillis=100 \
    -XX:CompileThreshold=1000 \
    -jar fabric-server-launch.jar nogui