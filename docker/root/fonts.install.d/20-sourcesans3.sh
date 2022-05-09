# -*- mode: sh; coding: utf-8-unix; -*-
# Name: Adobe Source Sans 3
# License: SIL OFL 1.1
# License URL: https://github.com/adobe-fonts/source-sans/blob/release/LICENSE.md
VERSION=3.046R

curl -L -O https://github.com/adobe-fonts/source-sans/archive/refs/tags/$VERSION.tar.gz
tar xzf $VERSION.tar.gz
mv source-sans-$VERSION/OTF /usr/share/fonts/opentype/sourcesans3
mv source-sans-$VERSION/LICENSE.md /usr/share/fonts/opentype/sourcesans3
