FROM ubuntu:24.10

RUN apt update
RUN apt install -y \
    curl \
    git \
    zip \
    vim

RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash && \
    export NVM_DIR="$HOME/.nvm" && \
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" && \
    nvm install node --default

WORKDIR /var/www

