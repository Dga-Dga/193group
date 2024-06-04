bash#!/bin/bash



cd /Animal/Favorite


animals=("Кошка" "Собака" "Лев" "Змея" "Кролик" "Слон" "Попугай" "Медведь" "Обезьяна" "Тигр" "Крокодил" "Панда" "Жираф" "Волк" "Лиса" "Олень" "Хомяк" "Корова" "Коза" "Лошадь")

for ((i=1; i<=20; i++)); do
    touch file_$i.txt
    for ((j=0; j<20; j++)); do
        animal_index=$((RANDOM % ${#animals[@]}))
        echo ${animals[$animal_index]} >> file_$i.txt
    done
done
