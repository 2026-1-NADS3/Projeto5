#!/bin/bash
# Gerenciamento do serviço Backend

SERVICO="minha_app_java" # Nome fictício do seu processo

case "$1" in
    start)
        echo "Iniciando $SERVICO..."
        # Simulação de comando para rodar em segundo plano
        nohup java -jar meu_projeto.jar > app.log 2>&1 &
        ;;
    stop)
        echo "Parando $SERVICO..."
        pkill -f meu_projeto.jar
        ;;
    status)
        if pgrep -f meu_projeto.jar > /dev/null; then
            echo "Status: ONLINE"
        else
            echo "Status: OFFLINE. Tentando restart automático..."
           bash /home/admin/Desktop/Projeto5/documentos/Entrega\ 1/cloudNative/gerenciar.sh start	
        fi
        ;;
    *)
        echo "Uso: $0 {start|stop|status}"
        ;;
esac

