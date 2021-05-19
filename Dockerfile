FROM postgres:10 

RUN apt-get update &&  apt-get install -y openssl curl procps

RUN \curl -sSL https://rvm.io/mpapis.asc | gpg --import - && \
    \curl -sSL https://rvm.io/pkuczynski.asc | gpg --import - && \
    \curl -L https://get.rvm.io | bash -s stable && \
    /bin/bash -l -c "rvm requirements" && \
    /bin/bash -l -c "rvm install 2.6" && \
    /bin/bash -l -c "gem install bundler"
