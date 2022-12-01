FROM nvidia/cudagl:11.2.0-base

	
# Installing libraries for TM
ENV TZ Europe/Berlin
RUN apt-get update \
        && DEBIAN_FRONTEND=noninteractive apt-get install -y \
            libusb-0.1-4 \
            tzdata \
            xvfb \
            #libglu1-mesa \
            libxrandr-dev \
            libxft2 \
            libxss1 \
			python3.5 \
            python3-pip \
    && rm -rf /var/lib/apt/lists/* \
    && mkdir -p /opt/ipg/etc \
    && cp /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/3bf863cc.pub

RUN echo 'build docker boss'







