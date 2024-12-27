#!/bin/bash

#1
addgroup aluno
addgroup professor
addgroup gerente

#2
mkdir /srv
chown root:gerente /srv

#3
sudo mkdir /srv/alunos
sudo mkdir /srv/professores
sudo chown root:aluno /srv/alunos
sudo chown root:professor /srv/professores

#4
sudo chmod 751 /srv
sudo chmod 770 /srv/alunos
sudo chmod 770 /srv/professores

#5
sudo adduser --gecos "" --disabled-login --home /srv/professores/bruno --ingroup professor bruno 

#6
sudo usermod -aG gerente bruno 

#7
sudo adduser --gecos "" --disabled-login --home /srv/alunos/joao --ingroup aluno joao
sudo adduser --gecos "" --disabled-login --home /srv/alunos/maria --ingroup aluno maria

#8
sudo usermod --expiredate 2024-12-31 --inactive 90 joao
sudo usermod --expiredate 2024-12-31 --inactive 90 maria
