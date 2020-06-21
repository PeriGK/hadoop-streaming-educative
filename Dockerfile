FROM harisekhon/hadoop
MAINTAINER Periklis Gkolias (https://gr.linkedin.com/in/periklis-gkolias-23914a5b)

WORKDIR /

COPY src src
COPY myentrypoint.sh myentrypoint.sh

RUN chmod +x entrypoint.sh
RUN chmod +x -R src/
RUN chmod +x myentrypoint.sh