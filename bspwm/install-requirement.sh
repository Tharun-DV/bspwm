#!/bin/bash

echo "Installing the Required Pacakages Please wait!"
sleep 5
file="pacakages.txt"
while read -r line; do
    sudo apt-get install -y  "$line" 
done <$file

echo "Done Installation the Pacakages"
sudo systemctl enable sddm
sleep 5

<<font

echo "Installing Nerd Fonts..."

nerd_font="JetBrainsMono"
nerd_font_version="3.0.1"

mkdir -p $HOME/.fonts
cd $HOME/.fonts

wget "https://github.com/ryanoasis/nerd-fonts/releases/download/v${nerd_font_version}/${nerd_font}.zip"

unzip "${nerd_font}.zip"

rm OFL.txt
rm readme.md
rm "${nerd_font}.zip"

fc-cache

echo " "

cd "$HOME"

echo "Done!"
font

echo "Installing configuration from https://github.com/THARUN-DV/bspwm"
mkdir $HOME/bsp
git clone https://github.com/Tharun-DV/Bspwm.git $HOME/Desktop/bsp
cp -r $HOME/Desktop/bsp/bspwm $HOME/.config/
cd $HOME/.config/bspwm
chmod +x autostart.sh bin/* bspwmrc polybar/bin/* sxhkd/*
cd $HOME
rm -rf bsp

echo "Done"
