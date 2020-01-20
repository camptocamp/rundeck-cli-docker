FROM openjdk:11
LABEL maintainer="julien.godin@camptocamp.com"
LABEL version="1.0"
ARG RD_CLI_VERSION=1.1.7
RUN curl -L https://github.com/rundeck/rundeck-cli/releases/download/v$RD_CLI_VERSION/rundeck-cli_$RD_CLI_VERSION-1_all.deb -o rundeck-cli_$RD_CLI_VERSION-1_all.deb
RUN apt -y install ./rundeck-cli_$RD_CLI_VERSION-1_all.deb
ENTRYPOINT ["/usr/bin/rd"]
