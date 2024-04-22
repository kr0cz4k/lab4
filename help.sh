#!/bin/bash

show_help() {
	echo "Użycie: $0 --help"
}

if [ "$1" == "--help" ]; then
	show_help
	echo "Dostępne skrypty:"
	echo "  data.sh   - Skrypt wyświetlający datę dzisiejszą."
	echo "  logs.sh - Skrypt tworzący pliki (100)."
	echo "  30.sh - Skrypt tworzący pliki (30)"
	exit 0
else
	echo "Błąd: Nieznany argument."
	show_help
	exit 1
fi
