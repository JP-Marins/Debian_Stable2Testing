#!/usr/bin/env bash

# Mudança para o branch Testing
cp /etc/apt/sources.list /etc/apt/sources.listOLD
sed -i 's/bookworm/testing/g' /etc/apt/sources.list

# Remoção das travas do APT
rm /var/lib/dpkg/lock-frontend
rm /var/cache/apt/archives/lock

echo " "
printf "Inicializando atualização do sistema..."
echo " "
# Atualização e limpeza do sistema
apt-get update ; apt-get upgrade -y ; apt-get full-upgrade -y ; apt-get autoremove --purge -y ; apt clean

# Reinicialização do sistema
echo " "
printf "Finalizado. Reinicialização em 5 segundos..."
sleep 5
reboot
