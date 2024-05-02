#!/usr/bin/env bash
./jdk/bin/java \
    -XX:MaxRAMPercentage=40.0 \
    -XX:+UseG1GC -XX:MaxGCPauseMillis=100 \
    -XX:CompileThreshold=1000 \
    -XX:C1CompileThreshold=1000 \
    -XX:C2CompileThreshold=1000 \
    -XX:FalconCompileThreshold=1000 \
    -XX:+FlightRecorder \
    -XX:StartFlightRecording=duration=5m,filename=flight-optimized.jfr \
    -jar fabric-server-launch.jar nogui

source ./z-clear.sh