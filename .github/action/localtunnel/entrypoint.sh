#!/bin/sh

set -eu
set +x

apk add nodejs npm
npm install -g localtunnel static-server

cat <<HTML > index.html
<h1>HELLO SHITBRICK</h1>
HTML

static-server --port 8080 &

lt --port 8080 --subdomain testingtestingstuff
