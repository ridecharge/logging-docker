Logging Docker
=========
This container sets up a shared syslog  and is intended to listen on localhost:514/udp on the host as well as link against other containers to centralize logging.

With docker 1.6 we'll be using the `--logging-driver=syslog` flag to handle stdout from docker to be sent to this container.

We take a `LOGGLY_TOKEN` from cloudformation to configure our logs to be sent out to a hosted 3rd party. 
