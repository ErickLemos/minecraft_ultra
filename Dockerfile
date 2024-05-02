FROM azul/prime:21
WORKDIR /minecraft

COPY . .
RUN cat /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor

ENTRYPOINT ./start.container.sh
