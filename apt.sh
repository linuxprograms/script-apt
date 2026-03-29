#!/bin/bash

echo "🐧"
echo "📌 Script para distros basadas en Debian o Ubuntu"

echo "🔄 Actualizando el sistema..."
sudo apt-get update && sudo apt-get full-upgrade -y

echo "📦 Instalando paquetes esenciales..."
sudo apt install gdebi  synaptic p7zip-full p7zip-rar rar unrar

echo "🔡 Tipografias"
sudo apt-get install fonts-freefont-ttf fonts-freefont-otf ttf-mscorefonts-installer fonts-ubuntu

echo "🎵 Soporte multimedia..."
ffmpeg libavcodec-extra gstreamer1.0-libav gstreamer1.0-plugins-ugly gstreamer1.0-plugins-bad gstreamer1.0-pulseaudio vorbis-tools 

echo "📂  Programas y utilidades..."
sudo apt-get install -y cmatrix htop fastfetch vlc qbittorrent obs-studio mousepad evince eog libreoffice-l10n-es

echo "📦 Instalar y activar flatpak"
sudo apt install flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

echo "🧹 Eliminando paquetes innecesarios..."
sudo apt autoremove
sudo apt clean

echo  "✅ Terminado 🚀"
echo "🧠 ¡Actualizacion e instalacion completa! 🚀"
