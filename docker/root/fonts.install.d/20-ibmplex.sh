# -*- mode: sh; coding: utf-8-unix; -*-
# Name: IBM Plex
# License: SIL OFL 1.1
# License URL: https://github.com/IBM/plex/blob/master/LICENSE.txt
VERSION=5.1.3

curl -L -O https://github.com/IBM/plex/archive/refs/tags/v$VERSION.tar.gz
tar xzf v$VERSION.tar.gz
mv plex-$VERSION/IBM-Plex-Mono/fonts/complete/otf /usr/share/fonts/opentype/ibmplexmono
mv plex-$VERSION/IBM-Plex-Sans/fonts/complete/otf /usr/share/fonts/opentype/ibmplexsans
mv plex-$VERSION/IBM-Plex-Serif/fonts/complete/otf /usr/share/fonts/opentype/ibmplexserif
