# -*- mode: sh; coding: utf-8-unix; -*-
# Name: Adobe Source Serif 4
# License: SIL OFL 1.1
# License URL: https://github.com/adobe-fonts/source-serif/blob/release/LICENSE.md
curl -L -O https://github.com/adobe-fonts/source-serif/archive/refs/tags/4.004R.tar.gz
tar xzf 4.004R.tar.gz
mv source-serif-4.004R/OTF /usr/share/fonts/opentype/sourceserif4
mv source-serif-4.004R/LICENSE.md /usr/share/fonts/opentype/sourceserif4
