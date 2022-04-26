#!/bin/bash
# docker-provision.sh --- Single layer Docker provisioning script.

# ----------------------------------------
# Prepare to install packages and fonts
# ----------------------------------------
sed -i 's/main/main contrib/' /etc/apt/sources.list    # add contrib
apt-get update
apt-get install -y --no-install-recommends ca-certificates curl gzip tar unzip


# ----------------------------------------
# Install texlive w/XeLaTeX support
# ----------------------------------------
apt-get install -y --no-install-recommends \
        xz-utils \
        xzdec \
        texlive \
        texlive-plain-generic \
        texlive-latex-recommended \
        texlive-latex-extra \
        texlive-xetex \
        texlive-pstricks \
        latexmk \
        lmodern
# texlive-fonts-extra


# ----------------------------------------
# Install Lua Filters & GraphViz
# ----------------------------------------
PANDOC_DIR=/root/.local/share/pandoc
RELEASE_URL=https://github.com/pandoc/lua-filters/releases/latest

apt-get install -y graphviz librsvg2-bin
curl -LSs \
     $RELEASE_URL/download/lua-filters.tar.gz | \
     tar --strip-components=1 --one-top-level=$PANDOC_DIR -zvxf -


# ----------------------------------------
# Install Pandoc
# ----------------------------------------
PANDOC_VERSION=2.18
curl -L -O https://github.com/jgm/pandoc/releases/download/$PANDOC_VERSION/pandoc-$PANDOC_VERSION-1-amd64.deb
apt-get install -y ./pandoc-$PANDOC_VERSION-1-amd64.deb
rm pandoc-$PANDOC_VERSION-1-amd64.deb


# ----------------------------------------
# Install fonts
# ----------------------------------------
apt-get install -y --no-install-recommends fontconfig fontconfig-config
mkdir -p /usr/share/fonts/{truetype,opentype}     # create directories for fonts
mkdir -p /tmp/fonts                               # temporary location for downloading fonts
cd /tmp/fonts

for installer in /root/fonts.install.d/*.sh; do
  _name=$(sed -n 's|# Name: \(.*\)|\1|p' $installer)

  if [ -n "$_name" ]; then
    echo ">>>>> Installing $_name"
  fi

  source $installer
done

# clean up font packages
cd /
rm -r /tmp/fonts


# clean up os packages
apt-get purge -y curl unzip
apt-get clean -y
apt-get autoclean -y
apt-get autoremove -y
