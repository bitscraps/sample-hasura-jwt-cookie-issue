FROM ruby:3.0.1 AS web
# This is a build time argument that can be passed to the build command
ARG COMPILE

# Set up entrypoint early as we'll rarely change it
COPY ./entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh

COPY ./sample-app /sample-app

ENV GEM_HOME="/usr/local/bundle"
ENV PATH $GEM_HOME/bin:$GEM_HOME/gems/bin:$PATH

RUN gem install webrick
