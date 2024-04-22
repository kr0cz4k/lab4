#!/bin/bash

if [ "$#" -ne 3 ]; then
	echo "Użycie: $0 --logs [początkowy_numer] [końcowy_numer]"
	exit 1
fi

if [ "$1" != "--logs" ]; then
	echo "Użycie: $0 --logs [początkowy_numer] [końcowy_numer]"
	exit 1
fi

poczatek="$2"
koniec="$3"

if ! [[ "$poczatek" =~ ^[0-9]+$ ]] || ! [[ "$koniec" =~ ^[0-9]+$ ]]; then
	echo "Początkowy_numer i końcowy_numer muszą być liczbami całkowitymi."
	exit 1
fi

for ((i=poczatek; i<=koniec; i++)); do
	filename="log$i.txt"
	echo "Nazwa pliku: $filename" > "$filename"
	echo "Nazwa skryptu: $0" >> "$filename"
	echo "Data utworzenia: $(date)" >> "$filename"
done

echo "Utworzono pliki log${poczatek}.txt do log${koniec}.txt"
