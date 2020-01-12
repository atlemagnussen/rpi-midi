#!/usr/bin/env bash
sudo mount -o remount,size=128M /dev/shm
echo -n performance | sudo tee /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
export DBUS_SESSION_BUS_ADDRESS=unix:path=/run/dbus/system_bus_socket

jackd -P90 -p16 -t2000 -dalsa -dhw:0 -p512 -n3 -r44100
