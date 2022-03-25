#!/bin/bash

folder=$(cd && pwd)
echo "* * Atenção é necessario que Swift esteja instalado na máquina. * *"
if [[ -d "./.build/release/" ]]; then
	echo "Existe."
else
	echo "O executável ainda não foi criado em seu devido lugar"
	echo "Iniciando protocolo para criação e alocação do binário"
	swift build -c release
fi

cd "./.build/release"

if [[ -e "passgen" ]]; then
	echo "Movendo passgen para o diretório Home..."
	mv passgen $folder
	echo "Movido com sucesso."
else
	printf "\n\npassgen não está nessa pasta, talvez já tenha sido movido, ou não foi criado."
fi
