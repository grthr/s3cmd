#! /bin/sh
apk update
apk add --no-cache python py-pip py-setuptools git ca-certificates grep
git clone https://github.com/s3tools/s3cmd.git /tmp/tools
cd /tmp/s3tools
python setup.py install
rm -rf /tmp/s3tools
