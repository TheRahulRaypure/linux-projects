#!/bin/bash

echo "====================== 📊 System Info Dashboard ======================"
echo ""
echo "🖥️ Hostname      : $(hostname)"
echo "💿 OS Version    : $(lsb_release -d | awk -F"\t" '{print $2}')"
echo "⏱️ Uptime        : $(uptime -p)"
echo "🧠 Memory Usage  :"
free -h | awk 'NR==1 || NR==2 {print "  "$0}'
echo ""
echo "💽 Disk Usage    :"
df -h --total | grep -E 'Filesystem|total'
echo ""
echo "👥 Logged-in Users:"
who
echo ""
echo "🌐 Network Info:"
ip a | grep inet | awk '{print $2}' | grep -v 127.0.0.1
echo ""
echo "======================================================================"
