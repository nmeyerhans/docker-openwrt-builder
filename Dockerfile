FROM public.ecr.aws/debian/debian:bullseye-slim
MAINTAINER Noah Meyerhans <frodo@morgul.net>

COPY sources.list /etc/apt/

RUN apt-get update && \
  DEBIAN_FRONTEND=noninteractive apt-get -y dist-upgrade && \
  DEBIAN_FRONTEND=noninteractive apt-get -y --no-install-recommends install \
  asciidoc bash bc binutils bzip2 fastjar flex git-core g++ gcc util-linux \
  gawk libgtk2.0-dev intltool jikespg zlib1g-dev make genisoimage subversion \
  libncurses5-dev libssl-dev patch perl-modules python3-dev rsync ruby sdcc \
  unzip wget gettext xsltproc libboost-dev libxml-parser-perl libusb-dev \
  bin86 bcc sharutils xz-utils curl time python3-sphinx python3-sphinx-rtd-theme

VOLUME ["/src"]
WORKDIR /src
