# Debian
FROM debian

# Git, PHP
RUN apt-get update && apt-get install -y \
    git \
    php5-dev
    
# Swoole
RUN git clone https://github.com/swoole/swoole-src.git
RUN cd swoole-src
RUN phpize
RUN ./configure
RUN make && make install