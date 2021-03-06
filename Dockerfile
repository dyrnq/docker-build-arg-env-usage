FROM debian:10

ARG ENABLE_MIRROR

RUN set -x && \
    (test "${ENABLE_MIRROR}" != "true" || (sed -i "s,deb.debian.org,mirrors.huaweicloud.com,g" /etc/apt/sources.list && sed -i "s,security.debian.org,mirrors.huaweicloud.com,g" /etc/apt/sources.list) ) && \
    apt-get clean &&\
    apt-get update

COPY docker-entrypoint.sh /usr/local/bin/
RUN ln -s /usr/local/bin/docker-entrypoint.sh /entrypoint.sh

ENTRYPOINT ["docker-entrypoint.sh"]