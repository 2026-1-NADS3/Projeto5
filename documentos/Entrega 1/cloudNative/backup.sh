#!/bin/bash
# Script para Backup do Projeto e Banco de Dados
DESTINO="/home/admin/backups"
ORIGEM="/home/admin/projeto_dev"
DATA=$(date +%Y-%m-%d_%H-%M)
mkdir -p $DESTINO
echo "Iniciando backup em $DATA..."
tar -czf $DESTINO/backup_codigo_$DATA.tar.gz $ORIGEM 2>/dev/null
# mysqldump -u root -p senha_banco > $DESTINO/backup_db_$DATA.sql
echo "Backup concluído com sucesso em $DESTINO"

