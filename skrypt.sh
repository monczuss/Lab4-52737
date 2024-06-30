#!/bin/bash
if [[ $1 == "--date"  || $1 == "-d" ]]; then
    date
fi

if [[ ($1 == "--logs" || $1 == "-l") && -z $2 ]]; then
    for i in $(seq 1 100); do
        filename="log${i}.txt"
        echo "Nazwa pliku: $filename" > $filename
        echo "Nazwa skryptu: skrypt.sh" >> $filename
        echo "Data utworzenia: $(date)" >> $filename
    done
elif [[ ($1 == "--logs" || $1 == "-l") && $2 =~ ^[0-9]+$ ]]; then
    for i in $(seq 1 $2); do
        filename="log${i}.txt"
        echo "Nazwa pliku: $filename" > $filename
        echo "Nazwa skryptu: skrypt.sh" >> $filename
        echo "Data utworzenia: $(date)" >> $filename
    done
fi

if [[ $1 == "--help" || $1 == "-h" ]]; then
    echo "Dostępne opcje:"
    echo "--init       Klonuje repozytorium i dodaje ścieżkę do PATH"
    echo "--date, -d        Wyświetla dzisiejszą datę"
    echo "--logs, -l        Tworzy 100 plików logx.txt"
    echo "--logs, -l [n]    Tworzy n plików logx.txt"
    echo "--error, -e        Tworzy 100 plików errorx.txt"
    echo "--error, -e [n]    Tworzy n plików logx.txt"
    echo "--help, -h        Wyświetla tę pomoc"
fi

if [[ $1 == "--init" ]]; then
    git clone https://github.com/monczuss/Lab4-52737
    export PATH=$PATH:$(pwd)/Lab4-52737
fi

if [[ ($1 == "--error" || $1 == "-e") && -z $2 ]]; then
    for i in $(seq 1 100); do
        filename="error${i}.txt"
        echo "Nazwa pliku: $filename" > $filename
        echo "Nazwa skryptu: skrypt.sh" >> $filename
        echo "Data utworzenia: $(date)" >> $filename
    done
elif [[ ($1 == "--error" || $1 == "-e") && $2 =~ ^[0-9]+$ ]]; then
    for i in $(seq 1 $2); do
        filename="error${i}.txt"
        echo "Nazwa pliku: $filename" > $filename
        echo "Nazwa skryptu: skrypt.sh" >> $filename
        echo "Data utworzenia: $(date)" >> $filename
    done
fi