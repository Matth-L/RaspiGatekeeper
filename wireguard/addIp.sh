#!/bin/bash

# Nom du fichier WireGuard
WG_CONF="/etc/wireguard/wg0.conf"  # Remplacez wg0.conf par le chemin complet si n  cessaire.

# Adresse IP    ajouter
NEW_IP="192.168.2.1/32"

# V  rifiez si le fichier existe
if [[ ! -f $WG_CONF ]]; then
  echo "Erreur : Le fichier $WG_CONF n'existe pas."
  exit 1
fi

# Ajout de l'adresse IP dans la section AllowedIPs
sed -i "/^AllowedIPs = / s/$/, $NEW_IP/" $WG_CONF

# V  rifiez si l'ajout a r  ussi
if grep -q "AllowedIPs = .*${NEW_IP}" $WG_CONF; then
  echo "L'adresse IP $NEW_IP a   t   ajout  e avec succ  s    la section AllowedIPs."
else
  echo "Erreur : L'adresse IP $NEW_IP n'a pas pu   tre ajout  e."
  exit 1
fi

