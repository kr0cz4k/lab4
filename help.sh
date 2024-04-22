#!/bin/bash

show_help() {
	echo "Użycie: $0 [--help | -h]"
}

if [ "$1" == "--help" ] || [ "$1" == "-h"]; then
	show_help
	echo "Dostępne skrypty:"
	echo "  data.sh   - Skrypt wyświetlający datę dzisiejszą."
	echo "  logs.sh - Skrypt tworzący pliki (100)."
	echo "  30.sh - Skrypt tworzący pliki (30)."
	echo "  help.sh - Skrpyt wyświetlający dostępne opcje."
	echo "  error.sh - Skrypt tworzący errorx/errorx.txt."
	echo "  skrypt.sh - Skrypt klonujący repozytorium."
	exit 0
else
	echo "Błąd: Nieznany argument."
	show_help
	exit 1
fi
