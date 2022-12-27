# -*- mode: sh; coding: utf-8-unix; -*-
# Name: IBM Plex
# License: SIL OFL 1.1
# License URL: https://github.com/IBM/plex/blob/master/LICENSE.txt
VERSION=6.1.1

curl -L -O https://github.com/IBM/plex/archive/refs/tags/v$VERSION.tar.gz
tar xzf v$VERSION.tar.gz

# IBM Plex Mono
mv plex-$VERSION/IBM-Plex-Mono/fonts/complete/otf /usr/share/fonts/opentype/ibmplexmono
cp plex-$VERSION/LICENSE.txt /usr/share/fonts/opentype/ibmplexmono

# IBM Plex Sans
mv plex-$VERSION/IBM-Plex-Sans/fonts/complete/otf /usr/share/fonts/opentype/ibmplexsans
cp plex-$VERSION/LICENSE.txt /usr/share/fonts/opentype/ibmplexsans

# IBM Plex Serif
mv plex-$VERSION/IBM-Plex-Serif/fonts/complete/otf /usr/share/fonts/opentype/ibmplexserif
cp plex-$VERSION/LICENSE.txt /usr/share/fonts/opentype/ibmplexserif
