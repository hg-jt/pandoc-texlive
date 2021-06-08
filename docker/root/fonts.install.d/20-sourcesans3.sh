# -*- mode: sh; coding: utf-8-unix; -*-
# Name: Adobe Source Sans 3
# License: SIL OFL 1.1
# License URL: https://github.com/adobe-fonts/source-sans/blob/release/LICENSE.md
curl -L -O https://github.com/adobe-fonts/source-sans/archive/refs/tags/3.028R.tar.gz
tar xzf 3.028R.tar.gz
mv source-sans-3.028R/OTF /usr/share/fonts/opentype/sourcesans3
mv source-sans-3.028R/LICENSE.md /usr/share/fonts/opentype/sourcesans3
