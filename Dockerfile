## BUILDING
##   (from project root directory)
##   $ docker build -t php-for-prydonius-sm-test .
##
## RUNNING
##   $ docker run -p 9000:9000 php-for-prydonius-sm-test
##
## CONNECTING
##   Lookup the IP of your active docker host using:
##     $ docker-machine ip $(docker-machine active)
##   Connect to the container at DOCKER_IP:9000
##     replacing DOCKER_IP for the IP of your active docker host

FROM gcr.io/bitnami-containers/minideb-extras:jessie-r3

MAINTAINER Bitnami <containers@bitnami.com>

ENV STACKSMITH_STACK_ID="ybj5ln8" \
    STACKSMITH_STACK_NAME="PHP for prydonius/sm-test" \
    STACKSMITH_STACK_PRIVATE="1"

RUN bitnami-pkg install php-5.6.15-0

ENV PATH=/opt/bitnami/php/bin:$PATH

## STACKSMITH-END: Modifications below this line will be unchanged when regenerating

# PHP base template
COPY . /app
WORKDIR /app

CMD ["php", "-a"]
