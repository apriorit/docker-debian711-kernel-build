FROM debian:7.11

RUN  /bin/sed -i -- 's/#deb-src/deb-src/g' /etc/apt/sources.list \
	&& /bin/sed -i -- 's/# deb-src/deb-src/g' /etc/apt/sources.list \
	&& apt-get update

RUN apt-get -y 	install	apt-utils

RUN apt-get -y 	install \
			libncurses5-dev \
	        zlib1g \
	        binutils-dev \
        	asciidoc \
			libbison-dev \
	        patchutils \
			libextutils-autoinstall-perl \
			xmlto \
			libaudit-dev \
			elfutils \
			libelfg0-dev \
	        libnewt-dev \
	        python-gudev \
			gcc \
			libssl-dev
