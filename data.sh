#!/bin/bash

if [ "$#" -ne 1 ]; then
	echo "Użycie: $0 [--data | -d]"
	exit 1
fi

if [ "$1" != "--data" ] && [ "$1" != "-d" ]; then
	echo "Użycie: $0 [--data | -d]"
	exit 1
fi

dzisiaj=$(date +"%Y-%m-%d")

echo "Dzisiaj jest: $dzisiaj"