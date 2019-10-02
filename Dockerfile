FROM alpine:3.7

ADD install.sh install.sh
RUN apk update
RUN apk add --no-cache python py-pip py-setuptools git ca-certificates grep
RUN git clone https://github.com/s3tools/s3cmd.git /tmp/s3cmd \
    && cd /tmp/s3cmd \
    && python setup.py install \
    && rm -r /tmp/s3cmd

WORKDIR /s3
