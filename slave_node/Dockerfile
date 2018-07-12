FROM raincoven/jm_base
LABEL Description="This image is used to start the Apache JMeter Server Executable"

# Ports required for JMeter Slaves/Server
EXPOSE 1099 50000

# Application to be executed to start the JMeter container
ENTRYPOINT $JMETER_HOME/bin/jmeter-server \
                        -Dserver.rmi.localport=50000 \
                        -Dserver_port=1099
