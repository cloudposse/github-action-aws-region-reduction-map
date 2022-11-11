FROM alpine:3.14

RUN apk add --no-cache bash

ENV GEODESIC_VERSION=1.3.6

ADD https://raw.githubusercontent.com/cloudposse/geodesic/${GEODESIC_VERSION}/rootfs/usr/local/bin/aws-region /usr/local/bin/aws-region

ENTRYPOINT ["/bin/bash"]

COPY entrypoint.sh /usr/local/bin/entrypoint
CMD [ "-c", "entrypoint" ]