# -*- mode: sh; coding: utf-8-unix; -*-
# Name: Adobe Source Serif 4
# License: SIL OFL 1.1
# License URL: https://github.com/adobe-fonts/source-serif/blob/release/LICENSE.md
VERSION=4.005R

curl -L -O https://github.com/adobe-fonts/source-serif/archive/refs/tags/$VERSION.tar.gz
tar xzf $VERSION.tar.gz
mv source-serif-$VERSION/OTF /usr/share/fonts/opentype/sourceserif4
mv source-serif-$VERSION/LICENSE.md /usr/share/fonts/opentype/sourceserif4
