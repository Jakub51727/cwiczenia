#!/bin/bash

if [ "$1" == "--date" ] || [ "$1" == "-d" ]; then
	echo "Dzis jest $(date)"
	exit 0
fi
if [ "$1" == "--logs" ] || [ "$1" == "-l" ]; then

	for ((i=1; i<100; i++)); do
		echo "plik: log$i.txt" > "log$i.txt"
		echo "utworzyl mnie skrypt: $0" >> "log$i.txt"
		echo "utworzono $(date)" >> "log$i.txt"
	done
	exit 0
fi
if [ "$1" == "--logs 30" ]; then
	for ((i=1; i<30; i++)); do
		echo "plik: log$i.txt" > "log$i.txt"
		echo "utworzyl mnie skrpyt: $0" >> "log$i.txt"
		echo "utworzono $(date)" >> "log$i.txt"
	done
	exit 0
fi
if [ "$1" == "--help" ] || [ "$1" == "-h"]; then
	echo "opcje:"
	echo "--date(-d) : wyswietla dzisiejsza date"
	echo "--logs(-l) : tworzy 100 plikow z nazwa, data i skryptem pierwotym"
	echo "--logs 30 : tworzy 30 plikow jak powyzszy skrypt"
	echo "--help(h) : dostepne opcje"
	exit 0
fi
if [ "$1" == "--init" ] || [ "$1" == "-i" ] ; then
	git clone https://github.com/Jakub51727/cwiczenia.git
	export PATH=$PATH:$(pwd)/cwiczenia
	exit 0
fi
echo "nie istnieje podana flaga. Wpisz '--help'"
exit 1

