FROM openjdk:17-slim-bullseye

RUN apt-get update -y && \
  DEBIAN_FRONTEND=noninteractive apt-get install -y curl unzip && \
  `# Remove unwanted` \
  rm -rf /usr/share/man && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*

WORKDIR /tmp
RUN curl  -o /tmp/jmol.zip --no-progress-meter -L https://sourceforge.net/projects/jmol/files/latest/download
RUN jar xf jmol.zip
RUN mv /tmp/jmol-*/JSpecView.jar /usr/bin

ADD myjcampdx.sh /usr/bin
ENTRYPOINT [ "/usr/bin/myjcampdx.sh" ]
