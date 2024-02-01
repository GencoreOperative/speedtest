FROM ubuntu:latest

RUN apt-get update && apt-get install -y curl
RUN curl -s https://packagecloud.io/install/repositories/ookla/speedtest-cli/script.deb.sh | bash
RUN apt-get install speedtest

RUN mkdir -p /root/.config/ookla
ADD license-accept.sh /root/.config/ookla/license-accept.sh
ADD start.sh /root

ENTRYPOINT ["sh", "/root/start.sh"]