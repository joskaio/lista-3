#!/bin/bash

opt=$1
dir=$(if [ -e "$2" ]; then echo "$2"; else echo "."; fi)

if [ $opt == '-a' ]; then
	echo -e "Verificando todos os diretórios! Aguarde um instante ;) \n---"
	ls -l "$dir" | grep "^d" | awk '{print $9}'
	
elif [ $opt == '-b' ]; then
	echo -e "Analisando todos arquivos executáveis! Fique atento =) \n---"
	ls -l "$dir" | grep "^-" | awk '{print $9}'

elif [ $opt == '-c' ]; then
	echo -e "Processando todos os links simbólicos! Espere um momento :) \n---"
	ls -l "$dir" | grep "^l" | awk '{print $9}'

else
	echo "Opção incorreta! :|"
fi	
