#!/bin/bash
TOKEN=e8bcd155-264b-4ec0-88be-fcb023f76a89
TAG=$(curl --connect-timeout 3 http://169.254.169.254/latest/meta-data/instance-id)

sed -i "s/TOKEN/$TOKEN/" /etc/syslog-ng/conf.d/22-loggly.conf
sed -i "s/TAG/$TAG/" /etc/syslog-ng/conf.d/22-loggly.conf

exec /usr/sbin/syslog-ng -F 