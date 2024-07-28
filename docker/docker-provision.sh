#!/bin/bash
# docker-provision.sh --- Single layer Docker provisioning script.

# ----------------------------------------
# Prepare to install packages and fonts
# ----------------------------------------
awk '!NF{exit}1' /etc/apt/sources.list.d/debian.sources | sed 's/main/contrib/' > /etc/apt/sources.list.d/debian-contrib.sources  # add contrib
apt-get update
apt-get install -y --no-install-recommends apt-utils ca-certificates curl dialog gzip tar unzip


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
# lcdf-typetools
# texlive-fonts-extra
# fonts-lmodern


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
PANDOC_VERSION=3.2.1
curl -L -O https://github.com/jgm/pandoc/releases/download/$PANDOC_VERSION/pandoc-$PANDOC_VERSION-1-$BUILDARCH.deb
apt-get install -y ./pandoc-$PANDOC_VERSION-1-$BUILDARCH.deb
rm pandoc-$PANDOC_VERSION-1-$BUILDARCH.deb


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


# ----------------------------------------
# Configure non-root user
# ----------------------------------------
useradd -ms /bin/bash pandoc
mv /root/.local /home/pandoc
chown -R pandoc: /home/pandoc/.local


# clean up os packages
apt-get purge -y apt-utils curl dialog unzip
apt-get clean -y
apt-get autoclean -y
apt-get autoremove -y
