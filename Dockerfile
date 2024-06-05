FROM ruby:3.3.2-alpine

# Install Node
RUN apk add nodejs npm

# Install build tools
RUN apk add --virtual build-dependencies build-base

# Install git
RUN apk add git

ENV SOURCE_HOME ./src
ENV APP_HOME /src

COPY $SOURCE_HOME $APP_HOME

WORKDIR $APP_HOME

# Add bundle entry point to handle bundle cache
ENV BUNDLE_PATH=/bundle \
    BUNDLE_BIN=/bundle/bin \
    GEM_HOME=/bundle
ENV PATH="${BUNDLE_BIN}:${PATH}"
