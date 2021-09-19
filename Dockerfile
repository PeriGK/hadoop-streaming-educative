FROM harisekhon/hadoop
FROM gcr.io/educative-exec-env/educative-ubuntu-microvm:latest
MAINTAINER Periklis Gkolias (https://gr.linkedin.com/in/periklis-gkolias-23914a5b)

WORKDIR /

COPY src src
COPY myentrypoint.sh myentrypoint.sh
RUN ssh-keygen -t rsa -P '' -f ~/.ssh/id_rsa && cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys

RUN chmod +x entrypoint.sh
RUN chmod +x -R src/
RUN chmod +x myentrypoint.sh


