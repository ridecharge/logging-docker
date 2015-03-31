# Latest Ubuntu LTS
FROM ridecharge/ansible

EXPOSE 514/udp
ENTRYPOINT ["/tmp/syslog-ng-wrapper.sh"]
