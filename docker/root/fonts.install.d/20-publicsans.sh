# -*- mode: sh; coding: utf-8-unix; -*-
# Name: Public Sans
# License: SIL OFL 1.1
# License URL: https://github.com/uswds/public-sans/blob/develop/LICENSE.md
curl -L -O https://github.com/uswds/public-sans/archive/refs/tags/v1.008.tar.gz
tar xvf v1.008.tar.gz
mv public-sans-1.008/binaries/otf /usr/share/fonts/opentype/publicsans
mv public-sans-master/LICENSE.md /usr/share/fonts/opentype/publicsans
