#!/bin/bash

nombre_fichiers() {
  find . -type f | wc -l
}

nombre_fichiers_reel=$(nombre_fichiers)

verifier_estimation() {
  estimation=$1
  if [ $estimation -lt $nombre_fichiers_reel ]; then
    echo "Votre estimation est trop basse. Essayez encore !"
  elif [ $estimation -gt $nombre_fichiers_reel ]; then
    echo "Votre estimation est trop haute. Essayez encore !"
  else
    echo "Félicitations ! Vous avez deviné le nombre correct de fichiers."
    exit 0
  fi
}

while true; do
  echo "Combien de fichiers y a-t-il dans ce répertoire ?"
  read estimation
  verifier_estimation $estimation
done