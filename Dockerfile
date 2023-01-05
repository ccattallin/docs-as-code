FROM python:3.7-slim
LABEL version="0.1.0"


RUN apt update -y && apt install -y --no-install-recommends software-properties-common vim

RUN apt-get update -y && \
    apt-get install -y --no-install-recommends wget gnupg && \
    wget -qO - https://adoptopenjdk.jfrog.io/adoptopenjdk/api/gpg/key/public | apt-key add - && \
    echo "deb https://adoptopenjdk.jfrog.io/adoptopenjdk/deb/ buster main" | tee /etc/apt/sources.list.d/adoptopenjdk.list && \
    apt-get update -y && \
    apt-get install -y --no-install-recommends \
        adoptopenjdk-8-hotspot \