FROM debian:stretch-slim
MAINTAINER Noah Meyerhans <frodo@morgul.net>

ADD sources.list /etc/apt/sources.list

RUN DEBIAN_FRONTEND=noninteractive apt-get update && \
  DEBIAN_FRONTEND=noninteractive apt-get -y --no-install-recommends install \
  asciidoc bash bc binutils bzip2 fastjar flex git-core g++ gcc util-linux \
  gawk libgtk2.0-dev intltool jikespg zlib1g-dev make genisoimage subversion \
  libncurses5-dev libssl-dev patch perl-modules python2.7-dev rsync ruby sdcc \
  unzip wget gettext xsltproc libboost1.62-dev libxml-parser-perl libusb-dev \
  bin86 bcc sharutils xz-utils curl

RUN adduser --disabled-password --uid 1000 --gecos "Docker Builder,,," builder

VOLUME ["/src"]
USER builder
WORKDIR /src
