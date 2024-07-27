# -*- mode: sh; coding: utf-8-unix; -*-
# Name: Charis SIL
# License: SIL OFL 1.1
# License URL: https://github.com/silnrsi/font-charis/blob/master/OFL.txt
VERSION=6.200

# Charis SIL
curl -L -O https://github.com/silnrsi/font-charis/releases/download/v$VERSION/CharisSIL-$VERSION.zip
unzip -q CharisSIL-$VERSION.zip
mkdir -p /usr/share/fonts/truetype/charissil
mv CharisSIL-$VERSION/*.ttf /usr/share/fonts/truetype/charissil
mv CharisSIL-$VERSION/OFL.txt /usr/share/fonts/truetype/charissil

# Charis SIL Compact
#curl -L -o CharisSIL-Compact.zip 'https://scripts.sil.org/ttw/fonts2go.cgi?family=CharisSIL&pkg=Compact'
#unzip -q CharisSIL-Compact.zip
#mv CharisSIL-Compact-*/*.ttf /usr/share/fonts/truetype/charissil
#mv CharisSIL-Compact-*/OFL.txt /usr/share/fonts/truetype/charissil
