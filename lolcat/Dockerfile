FROM ruby:alpine

ENTRYPOINT ["/usr/local/bundle/bin/lolcat"]

RUN gem install lolcat

# run as non-root
USER 1000:1000
