#!/usr/bin/env sh

cp bash/.bash_aliases ~/.bash_aliases
cp tmux/.tmux.conf ~/.tmux.conf

# Update the system
apt update && apt full-upgrade --autoremove -y && apt autoclean

# Install applications
apt --no-install-recommends -yq install binwalk build-essential gdb foremost steghide pngcheck ffmpeg hxtools qpdf unrar-free \
    imagemagick-6-common imagemagick-6.q16 imagemagick-6.q16hdri zbar-tools upx pypy lldb-9 jython

# Dependencies for python libraries
apt --no-install-recommends -yq install libmpfr-dev libmpc-dev

# Ruby gems
gem install zsteg

# Python Libraries
pip3 install -r requirements.txt

pip3 install --upgrade git+https://github.com/Gallopsled/pwntools.git@dev3
