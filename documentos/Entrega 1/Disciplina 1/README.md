## Arquivos

```
Disciplina 1/
├── setup.sh       → configura o ambiente de desenvolvimento
├── monitor.sh     → mostra o uso de CPU, memória e disco
├── backup.sh      → faz backup do projeto automaticamente
├── gerenciar.sh   → inicia, para e reinicia o backend
└── README.md      → esse arquivo aqui
```

---

## Como rodar

Antes de qualquer coisa, dê permissão de execução para os scripts:

```bash
chmod +x setup.sh monitor.sh backup.sh gerenciar.sh
```

---

## Os scripts

### setup.sh — Preparar o ambiente

Esse script instala tudo que você precisa para desenvolver: Java 17, wget, unzip, e já configura as variáveis de ambiente no seu `.bashrc`.

```bash
bash setup.sh
```

Você só precisa rodar uma vez quando for configurar a máquina do zero.

---

### monitor.sh — Ver como está o sistema

Mostra um relatório rápido com o uso de CPU, memória RAM e espaço em disco. Útil para saber se a máquina está sobrecarregada.

```bash
bash monitor.sh
```

Exemplo do que aparece:

```
--- RELATÓRIO DE MONITORAMENTO ---
Data/Hora: Seg Mar 24 10:32:00 UTC 2026

[Uso de CPU - Load Average]
 0.15, 0.10, 0.09

[Uso de Memória RAM]
Usado: 512MB / Total: 2048MB

[Uso de Disco]
Espaço ocupado: 45% de 20G
----------------------------------
```

---

### backup.sh — Salvar o projeto

Compacta a pasta do projeto e salva em `~/backups` com a data e hora no nome do arquivo, pra você nunca perder o que já fez.

```bash
bash backup.sh
```

O arquivo gerado fica assim:

```
~/backups/backup_codigo_2026-03-24_10-35.tar.gz
```

Se quiser que o backup rode sozinho todo dia às 3 da manhã, rode `crontab -e` e adicione essa linha:

```
00 03 * * * /home/seu-usuario/backup.sh
```

---

### gerenciar.sh — Controlar o backend

Serve pra iniciar, parar ou ver o status do servidor. Se o servidor cair, o script tenta reiniciar sozinho.

```bash
bash gerenciar.sh start    # inicia
bash gerenciar.sh stop     # para
bash gerenciar.sh status   # verifica — reinicia automaticamente se estiver offline
```

---
