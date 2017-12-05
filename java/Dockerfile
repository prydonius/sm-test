## BUILDING
##   (from project root directory)
##   $ docker build -t java-for-prydonius-sm-test .
##
## RUNNING
##   $ docker run java-for-prydonius-sm-test

FROM gcr.io/bitnami-containers/minideb-extras:jessie-r12

MAINTAINER Bitnami <containers@bitnami.com>

ENV STACKSMITH_STACK_ID="g7j9ngt" \
    STACKSMITH_STACK_NAME="Java for prydonius/sm-test" \
    STACKSMITH_STACK_PRIVATE="1"

RUN bitnami-pkg install java-1.8.0_77-0 --checksum 85bba1b7031ef45073f06bc8cbc34f1e7cae2f2fcf350af9ec8389b0ea6302bf

ENV PATH=/opt/bitnami/java/bin:$PATH \
    JAVA_HOME=/opt/bitnami/java

## STACKSMITH-END: Modifications below this line will be unchanged when regenerating

# Java base template
COPY . /app
WORKDIR /app
