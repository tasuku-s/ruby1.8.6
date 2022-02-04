FROM ubuntu:22.04

RUN apt-get update && \
#    apt-get install -y git autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm6 libgdbm-dev libdb-dev
    apt-get install -y software-properties-common && \
    apt-add-repository -y ppa:rael-gc/rvm && \
    apt-get update && \
    apt-get install -y rvm

RUN /usr/share/rvm/bin/rvm pkg install openssl && \
    /usr/share/rvm/bin/rvm install 1.8.6 --with-openssl-dir=/usr/local/rvm/usr

ENV PATH="/usr/share/rvm/rubies/ruby-1.8.6-p420/bin/:$PATH"

#RUN git clone https://github.com/rbenv/ruby-build.git && \
#    PREFIX=/usr/local ./ruby-build/install.sh && \
#    rm -rf ./ruby-build/.git
