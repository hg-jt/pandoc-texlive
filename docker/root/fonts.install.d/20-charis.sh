# -*- mode: sh; coding: utf-8-unix; -*-
# Name: Charis
# License: SIL OFL 1.1
# License URL: https://github.com/silnrsi/font-charis/blob/master/OFL.txt
VERSION=7.000

# Charis
curl -L -O https://github.com/silnrsi/font-charis/releases/download/v${VERSION}/Charis-${VERSION}.zip
unzip -q Charis-${VERSION}.zip
mkdir -p /usr/share/fonts/truetype/charis
mv Charis-${VERSION}/*.ttf /usr/share/fonts/truetype/charis
mv Charis-${VERSION}/OFL.txt /usr/share/fonts/truetype/charis
