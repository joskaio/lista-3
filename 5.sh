#!/bin/bash

echo -e "\nInsira uma senha que contenha no mínimo 6 caracteres, uma letra maiúscula e um número."
read -p "Senha: " s

ver_pswd=$(echo "$s" | grep -E "[A-Z]" | grep -E "[0-9]+" | grep -E "[a-zA-Z0-9]{6,}")

if [ -n "$ver_pswd" ]; then
	echo -e "\nSenha válida. Pronta para ser usada!"
else
	echo -e "\nSenha inválida. Por favor, insira outra senha!"
fi	
