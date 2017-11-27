#!/bin/bash
cp "$1/templates/network/interfaces/default" "/etc/network/interfaces"
cp "$1/templates/network/wpa_supplicant" "/etc/wpa_supplicant/wpa_supplicant.conf"
cp "$1/templates/rc.local/default" "/etc/rc.local"
rm -rf /etc/hostapd.conf
rm -rf /etc/network/interfaces.d/*
pirateship rename raspberrypi
systemctl disable hostapd || true
systemctl disable dnsmasq || true