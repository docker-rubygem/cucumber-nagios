FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.8.10

RUN gem install cucumber-nagios --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["cucumber-nagios"]
CMD ["--help"]
