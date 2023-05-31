FROM ubuntu:22.04
RUN apt update
RUN apt-get install -y curl jq
RUN curl -s https://packagecloud.io/install/repositories/ookla/speedtest-cli/script.deb.sh | bash
RUN apt-get install -y speedtest
RUN mkdir /work/
WORKDIR /work/
COPY run.sh /work/
ENTRYPOINT /work/run.sh

