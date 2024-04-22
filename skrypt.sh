#!/bin/bash

if [ "$1" == "--init" ]; then
	git clone https://github.com/kr0cz4k/lab4

	current_directory=$(pwd)
	echo "export PATH=\$PATH:$current_directory" >> ~/.bashrc
	echo "Repozytorium zostało sklonowane i ścieżka została ustawiona w PATH."
	echo "Należy zrestartować terminal, aby zmiany zaczęły obowiązywać."
	exit 0
else
	echo "Użycie: $0 --init"
	exit 1
fi
