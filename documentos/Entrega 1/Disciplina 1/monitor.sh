#!/bin/bash

# Script de Monitoramento de Métricas
# Objetivo: Coletar uso de CPU, Memória e Disco

echo "--- RELATÓRIO DE MONITORAMENTO ---"
echo "Data/Hora: $(date)"

# 1. Coletando uso de CPU (mostra a carga média dos últimos 1, 5 e 15 min)
echo -e "\n[Uso de CPU - Load Average]"
uptime | awk -F'load average:' '{ print $2 }'

# 2. Coletando uso de Memória RAM (em Megabytes)
echo -e "\n[Uso de Memória RAM]"
free -m | grep "Mem:" | awk '{print "Usado: " $3 "MB / Total: " $2 "MB"}'

# 3. Coletando uso de Disco (da partição principal)
echo -e "\n[Uso de Disco]"
df -h / | tail -1 | awk '{print "Espaço ocupado: " $5 " de " $2}'

echo -e "\n----------------------------------"



# Para permissão 
chmod +x setup.sh monitor.sh
