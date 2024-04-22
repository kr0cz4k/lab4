#!/bin/bash

if [ "$1" == "--init" ]; then
	git clone https://github.com/kr0cz4k/lab4

	current_directory=$(pwd)
	echo "export PATH=\$PATH:$current_directory" >> ~/.bashrc
	echo "Repozytorium zostało sklonowane i ścieżka została ustawiona w PATH."
	echo "Należy zresetować terminal, aby zmiany zaczęły obowiązywać."
	exit 0
elif [ "$1" == "--error" ] || [ "$1" == "-e" ]; then
	if [ -n "$2" ]; then
		liczba_plikow="$2"
	else
		liczba_plikow=100
	fi

	for ((i=1; i<=liczba_plikow; i++)); do
		mkdir -p "errorx"
		touch "errorx/error$i.txt"
	done

	echo "Utworzono $liczba_plikow plików errorx/errorx.txt"
	exit 0
else
	echo "Użycie: $0 [--init | --error | -e] [liczba_plików]"
	exit 1
fi
