FROM hoverbear/archlinux
MAINTAINER Andrew Hobden <andrew@hoverbear.org>

# It's always a good idea to update Arch, then install deps.
RUN pacman -Syu
RUN pacman -S git file awk gcc --noconfirm

# Install Multirust
RUN git clone --recursive https://github.com/brson/multirust 
WORKDIR multirust
RUN git submodule update --init
RUN ./build.sh
RUN ./install.sh

RUN multirust default "nightly"

# /source - Should mount the user code.
VOLUME [ "/source" ]

# Change the Workdir to /source
WORKDIR /source
