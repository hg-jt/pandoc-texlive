# -*- mode: sh; coding: utf-8-unix; -*-
# Name: IBM Plex
# License: SIL OFL 1.1
# License URL: https://github.com/IBM/plex/blob/master/LICENSE.txt
PLEX_MATH_VERSION=1.1.0
PLEX_MONO_VERSION=1.1.0
PLEX_SANS_VERSION=1.1.0
PLEX_SERIF_VERSION=1.1.0


# IBM Plex Sans
curl -L -O https://github.com/IBM/plex/releases/download/@ibm/plex-sans@$PLEX_SANS_VERSION/ibm-plex-sans.zip
unzip ibm-plex-sans.zip
mv ibm-plex-sans/fonts/complete/otf /usr/share/fonts/opentype/ibmplexsans
cp ibm-plex-sans/fonts/complete/otf/license.txt /usr/share/fonts/opentype/ibmplexsans


# IBM Plex Serif
curl -L -O https://github.com/IBM/plex/releases/download/@ibm/plex-serif@$PLEX_SERIF_VERSION/ibm-plex-serif.zip
unzip ibm-plex-serif.zip
mv ibm-plex-serif/fonts/complete/otf /usr/share/fonts/opentype/ibmplexserif
cp ibm-plex-serif/fonts/complete/otf/license.txt /usr/share/fonts/opentype/ibmplexserif


# IBM Plex Mono
curl -L -O https://github.com/IBM/plex/releases/download/@ibm/plex-mono@$PLEX_MONO_VERSION/ibm-plex-mono.zip
unzip ibm-plex-mono.zip
mv ibm-plex-mono/fonts/complete/otf /usr/share/fonts/opentype/ibmplexsans
cp ibm-plex-mono/fonts/complete/otf/license.txt /usr/share/fonts/opentype/ibmplexmono


# IBM Plex Math
curl -L -O https://github.com/IBM/plex/releases/download/@ibm/plex-math@$PLEX_MATH_VERSION/ibm-plex-math.zip
unzip ibm-plex-math.zip
mv ibm-plex-math/fonts/complete/otf /usr/share/fonts/opentype/ibmplexmath
cp ibm-plex-math/fonts/complete/otf/license.txt /usr/share/fonts/opentype/ibmplexmath
