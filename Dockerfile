FROM debian:stable

# Install packages without prompting the user to answer any questions
ENV DEBIAN_FRONTEND noninteractive 

# Install packages
RUN echo "deb http://http.us.debian.org/debian stable main contrib non-free" >> /etc/apt/sources.list
# RUN DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends apt-utils
RUN apt-get update && apt-get install -y \
# apt-utils \
locales \
lsb-release \
git \
wget \
make \
binutils \gcc \
g++ \
patch \
gzip \
bzip2 \
perl \
tar \
cpio \
unzip \
rsync \
file \
bc \
libssl-dev \
build-essential 

RUN apt-get clean && rm -rf /var/lib/apt/lists/*


# Locale
RUN locale-gen en_US.UTF-8  
ENV LANG en_US.UTF-8  
ENV LANGUAGE en_US:en  
ENV LC_ALL en_US.UTF-8

RUN echo "LC_ALL=en_US.UTF-8" >> /etc/environment
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen
RUN echo "LANG=en_US.UTF-8" > /etc/locale.conf
RUN locale-gen en_US.UTF-8


# Download SeedSigner OS
RUN git clone --recursive https://github.com/seedsigner/seedsigner-os.git opt

# Entry script - This will also run Terminator
COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

# ---
CMD ["-h"]
