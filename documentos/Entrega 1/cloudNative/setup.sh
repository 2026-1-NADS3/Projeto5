#!/bin/bash

# Script de Setup do Ambiente - Automação Linux
# Objetivo: Instalar dependências para desenvolvimento Java/Android

echo "Iniciando o setup do sistema... Aguarde."

# 1. Atualizando os repositórios do sistema
sudo apt update -y

# 2. Instalando o Java (OpenJDK 17)
echo "Instalando Java..."
sudo apt install -y openjdk-17-jdk

# 3. Criando diretório para o Android SDK
mkdir -p ~/android-sdk
cd ~/android-sdk

# 4. Baixando ferramentas de build simples (exemplo com wget)
echo "Baixando ferramentas de build..."
sudo apt install -y wget unzip
# Simulando o download do commandlinetools (URL ilustrativa para o trabalho)
# wget https://dl.google.com/android/repository/commandlinetools-linux-x_main.zip

# 5. Configurando Variáveis de Ambiente no .bashrc
echo "Configurando variáveis de ambiente..."
echo 'export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64' >> ~/.bashrc
echo 'export PATH=$PATH:$JAVA_HOME/bin' >> ~/.bashrc

# Recarregar as configurações
source ~/.bashrc

echo "Setup finalizado com sucesso!"
java -version



#!/bin/bash
