FROM alpine:latest

# Installation of multiple layers - each RUN is cached separately
RUN apk add bash shadow
RUN apk add python3 py3-pip
RUN apk add tmux
RUN apk add sl
RUN apk add catimg
RUN apk add git
RUN apk add iputils # ping
RUN apk add curl
RUN apk add less
RUN apk add unzip
RUN apk add vim
RUN apk add make
RUN apk add tree
RUN apk add rsync
RUN apk add buildah

# python packages
RUN pip install --break-system-packages "pelican[markdown]"

RUN apk add openssh

RUN addgroup -S nonroot  \
  && adduser -g "lisa" -S lisa

# change the default shell for main user
RUN chsh -s /bin/bash lisa

# https://www.deutschlandfunkkultur.de/frauen-informatik-programmieren-geschichte-100.html
USER lisa

# Set the working directory
WORKDIR /workspace

# config für vi, rmux & paar shortcuts
RUN git clone https://github.com/frie321984/shellshaper && \
    mkdir -p ~/.config/tmux/tmux.conf && \
    cp shellshaper/.config/tmux/tmux.conf ~/.tmux.conf && \
    cp shellshaper/.vimrc ~/.vimrc && \
    cp shellshaper/.gitshortcuts.bashrc ~ && \
    cat shellshaper/bashrc-appendix >> ~/.bashrc && \
    rm -rf shellshaper

# Start bash shell
CMD ["/bin/bash"]

