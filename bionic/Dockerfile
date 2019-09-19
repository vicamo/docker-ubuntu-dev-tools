FROM buildpack-deps:bionic

RUN apt-get update --quiet \
    && apt-get install --yes ubuntu-dev-tools \
    && rm -rf /var/lib/apt
