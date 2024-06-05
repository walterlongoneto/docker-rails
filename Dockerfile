FROM ruby:3.3.2-alpine

RUN apk add nodejs npm
RUN apk add --virtual build-dependencies build-base

ENV SOURCE_HOME .
ENV APP_HOME /src
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

COPY $SOURCE_HOME $APP_HOME

# Add bundle entry point to handle bundle cache
ENV BUNDLE_PATH=/bundle \
    BUNDLE_BIN=/bundle/bin \
    GEM_HOME=/bundle
ENV PATH="${BUNDLE_BIN}:${PATH}"
