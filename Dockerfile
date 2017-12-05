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

FROM gcr.io/bitnami-containers/minideb-extras:jessie-r14

MAINTAINER Bitnami <containers@bitnami.com>

ENV STACKSMITH_STACK_ID="3gj6rrv" \
    STACKSMITH_STACK_NAME="PHP for prydonius/sm-test" \
    STACKSMITH_STACK_PRIVATE="1"

# Install required system packages
RUN install_packages libc6 zlib1g libxslt1.1 libtidy-0.99-0 libreadline6 libncurses5 libtinfo5 libldap-2.4-2 libstdc++6 libgmp10 libpng12-0 libjpeg62-turbo libbz2-1.0 libxml2 libssl1.0.0 libcurl3 libfreetype6 libicu52 libgcc1 libgcrypt20 libsasl2-2 libgnutls-deb0-28 liblzma5 libidn11 librtmp1 libssh2-1 libgssapi-krb5-2 libkrb5-3 libk5crypto3 libcomerr2 libgpg-error0 libp11-kit0 libtasn1-6 libnettle4 libhogweed2 libkrb5support0 libkeyutils1 libffi6 libsybdb5 libpq5

RUN bitnami-pkg install php-7.2.0-0 --checksum 156f57b0dfeaf11d085035ba83318966c1cd279f334630d7c5cc4ea9645778b0

ENV PATH=/opt/bitnami/php/bin:$PATH

## STACKSMITH-END: Modifications below this line will be unchanged when regenerating

RUN my-awesome-cli-tool

# PHP base template
COPY . /app
WORKDIR /app

CMD ["php", "-a"]
