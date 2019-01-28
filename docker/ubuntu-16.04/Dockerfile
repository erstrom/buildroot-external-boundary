FROM ubuntu:16.04

RUN apt-get -y update
RUN apt-get -y upgrade

# Dependencies for building buildroot
RUN apt-get -y install build-essential git subversion wget sed patch gzip bzip2 perl tar cpio python unzip rsync bc ncurses-dev

RUN useradd -ms /bin/bash user
USER user
RUN mkdir -p /home/user/build
WORKDIR /home/user/build

CMD ["bash"]
