FROM node:6.14.3-slim

# Install requirements
RUN apt-get update && \
    apt-get install -y python make g++ libicu-dev git
 
# Get slack-irc, we are getting it from Git because the one hosted in npm repos is old.
RUN git clone https://github.com/ekmartin/slack-irc.git && \
    cd slack-irc && \
    npm install --unsafe-perm=true && \
    npm run build

# Add configurations
ADD config.json slack-irc/config.json

WORKDIR "/slack-irc"
CMD ["start", "--", "--config", "/slack-irc/config.json"]
ENTRYPOINT ["/usr/local/bin/npm"]
