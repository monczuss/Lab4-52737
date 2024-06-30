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
    echo "--date        Wyświetla dzisiejszą datę"
    echo "--logs        Tworzy 100 plików logx.txt"
    echo "--logs [n]    Tworzy n plików logx.txt"
    echo "--help        Wyświetla tę pomoc"
fi
