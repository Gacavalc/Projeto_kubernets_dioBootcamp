#!/bin/bash

echo "Criando as imagens =-) ...."

docker build -t gacavalc/projkubernets:0.1 backend/.
docker build -t gacavalc/projkubernets:0.1 database/.

echo "Realizando o push das imagens !Será ? ..."

docker push gacavalc/proj-backend:0.1
docker push gacavalc/proj-database:0.1

echo "criando os servicos de cluster K8s .... "

kubectl apply -f ./services.yml

echo "Criando os Deployments =-) "

kubectl apply -f ./deployment.yml