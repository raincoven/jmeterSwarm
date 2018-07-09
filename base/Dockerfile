FROM ubuntu:18.04
LABEL Description="This image is used to start the Apache JMeter Master Executable"
# Installig Pre-requisite Packages like wget & JRE
RUN apt-get clean && \
        apt-get update && \
        apt-get -qy install \
                        wget \
                        default-jre-headless \
                        telnet \
                        iputils-ping \
                        unzip
# Installing jmeter
RUN   mkdir /jmeter \
        && cd /jmeter/ \
        && wget https://archive.apache.org/dist/jmeter/binaries/apache-jmeter-4.0.tgz \
        && tar -xzf apache-jmeter-4.0.tgz \
        && rm apache-jmeter-4.0.tgz \
	&& cd /jmeter/apache-jmeter-4.0/lib/ext
	&& wget http://search.maven.org/remotecontent?filepath=kg/apc/jmeter-plugins-manager/1.1/jmeter-plugins-manager-1.1.jar -O jmeter-plugins-manager-1.1.jar
# Settingt Jmeter Home
ENV JMETER_HOME /jmeter/apache-jmeter-4.0/
# Finally Adding Jmeter to the Path
ENV PATH $JMETER_HOME/bin:$PATH
