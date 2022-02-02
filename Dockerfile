FROM openjdk:12

WORKDIR /tmp
RUN curl -o /tmp/jmol.zip -L https://sourceforge.net/projects/jmol/files/latest/download
RUN jar xf jmol.zip
RUN mv /tmp/jmol-*/Jmol.jar /usr/bin

ADD myjcampdx.sh /usr/bin
