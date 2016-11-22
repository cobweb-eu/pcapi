FROM ubuntu:xenial

MAINTAINER EDINA

RUN apt-get update -q && apt-get install -yq git python-pip && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# No binaries, everything is installed from git master repo
RUN pip install --user git+https://github.com/cobweb-eu/pcapi@lite

# Generate .pcapi boilerplate:
RUN python $HOME/.local/lib/python2.7/site-packages/pcapi/config.py

# ..and listen to all interfaces (on default port 8080)
RUN sed -i 's/127.0.0.1/0.0.0.0/g' $HOME/.pcapi/pcapi.ini

# Shows output on screen

CMD $HOME/.local/bin/pcapi
