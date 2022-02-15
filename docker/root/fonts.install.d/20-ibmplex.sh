# -*- mode: sh; coding: utf-8-unix; -*-
# Name: IBM Plex
# License: SIL OFL 1.1
# License URL: https://github.com/IBM/plex/blob/master/LICENSE.txt
curl -L -O https://github.com/IBM/plex/archive/refs/tags/v5.1.3.tar.gz
tar xzf v5.1.3.tar.gz
mv plex-5.1.3/IBM-Plex-Mono/fonts/complete/otf /usr/share/fonts/opentype/ibmplexmono
#mv plex-5.1.3/IBM-Plex-Sans/fonts/complete/otf /usr/share/fonts/opentype/ibmplexsans
#mv plex-5.1.3/IBM-Plex-Serif/fonts/complete/otf /usr/share/fonts/opentype/ibmplexserif
