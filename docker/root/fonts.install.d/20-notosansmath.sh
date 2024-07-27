# -*- mode: sh; coding: utf-8-unix; -*-
# Name: Noto Sans Math
# License: SIL OFL 1.1
# License URL: https://github.com/notofonts/math/blob/main/OFL.txt
VERSION=3.000
FONT_DIR=/usr/share/fonts/opentype/notosansmath

mkdir -p $FONT_DIR
curl -L -O https://github.com/notofonts/math/releases/download/NotoSansMath-v$VERSION/NotoSansMath-v$VERSION.zip
unzip -q -d notosansmath NotoSansMath-v$VERSION.zip
cp notosansmath/NotoSansMath/full/otf/NotoSansMath-Regular.otf $FONT_DIR
cp notosansmath/OFL.txt $FONT_DIR
