#!/bin/bash
count_files() {
ls -1 | wc -l
}
nb=$(count_files)
guess=0
echo "Bienvenue au jeu Guessing Game !"
echo "Devinez le nombre de fichiers."
while [[ $guess -ne $nb ]]
do
read -p "votre estimation : " guess
if ! [[ $guess =~ ^[0-9]+$ ]]; then
	echo "Entrer un nombre valide "
	guess=0
elif [[ $guess -lt $nb ]]; then
	echo "Trop bas"
elif [[ $guess -gt $nb ]]; then
	echo "Trop haut"
else
	echo "Bravo"
fi
done
	echo "FIN DE JEU"
	echo "Merci"

