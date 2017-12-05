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

FROM gcr.io/bitnami-containers/minideb-extras:jessie-r12

MAINTAINER Bitnami <containers@bitnami.com>

ENV STACKSMITH_STACK_ID="tvziyhe" \
    STACKSMITH_STACK_NAME="PHP for prydonius/sm-test" \
    STACKSMITH_STACK_PRIVATE="1"

RUN bitnami-pkg install php-7.0.3-2 --checksum 9cdad9daff3d4ecb1ddf0c0a009d2d43d9b440e65b5c76906134b390775136c7

ENV PATH=/opt/bitnami/php/bin:$PATH

## STACKSMITH-END: Modifications below this line will be unchanged when regenerating

# PHP base template
COPY . /app
WORKDIR /app

CMD ["php", "-a"]
