# Latest Ubuntu LTS
FROM registry.gocurb.internal:80/ansible

EXPOSE 514/udp
ENTRYPOINT ["/tmp/syslog-ng-wrapper.sh"]
