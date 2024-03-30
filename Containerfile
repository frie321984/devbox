FROM fedora:latest

LABEL org.opencontainers.image.source=https://github.com/frie321984/devbox
LABEL org.opencontainers.image.description="Image um auf jedem Rechner mit docker oder podman eine Entwicklungsumgebung zu haben"
LABEL org.opencontainers.image.licenses=Apache-2.0
LABEL org.opencontainers.image.authors="frie321984"


# Installation of multiple layers - each RUN is cached separately
RUN dnf install -y bash
RUN dnf install -y python3 python3-pip
RUN dnf install -y tmux
RUN dnf install -y sl
RUN dnf install -y catimg
RUN dnf install -y git
RUN dnf install -y iputils # ping
RUN dnf install -y curl
RUN dnf install -y less
RUN dnf install -y unzip
RUN dnf install -y vim-enhanced
RUN dnf install -y make
RUN dnf install -y tree
RUN dnf install -y rsync
RUN dnf install -y openssh
RUN dnf install -y lftp
RUN dnf install -y hugo
RUN dnf install -y npm

# python packages
RUN pip3 install pelican
RUN pip3 install markdown

# config für vi, rmux & paar shortcuts
RUN git clone https://github.com/frie321984/shellshaper && \
    mkdir -p ~/.config/tmux/tmux.conf && \
    cp /shellshaper/.config/tmux/tmux.conf ~/.tmux.conf && \
    cp /shellshaper/.vimrc ~/.vimrc && \
    cp /shellshaper/.gitshortcuts.bashrc ~ && \
    cat /shellshaper/bashrc-appendix >> ~/.bashrc 

RUN mkdir -p ~/.ssh && \
    cp ssh/known_hosts ~/.ssh/known_hosts

# Set the working directory
WORKDIR /workspace

# Start bash shell
CMD ["/bin/bash"]

