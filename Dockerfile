FROM node:12-alpine

ENV SFDX_USE_GENERIC_UNIX_KEYCHAIN true
ENV SFDX_AUTOUPDATE_DISABLE true

RUN apk add --no-cache jq curl openssl git
RUN npm install -g sfdx-cli@7.28.7

RUN mkdir -p /src
VOLUME /src

CMD ["sfdx", "--help"]%