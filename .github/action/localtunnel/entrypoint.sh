#!/usr/bin/env bash

set -eu
set +o trace

apk add nodejs npm openssh

/etc/init.d/sshd start

cat <<EOF > ~/.ssh/authorised_keys
ecdsa-sha2-nistp521 AAAAE2VjZHNhLXNoYTItbmlzdHA1MjEAAAAIbmlzdHA1MjEAAACFBABxRMVJmSIynThNd+ZQsS7b23F5ifPBxsLxKpcR3ddndKHMel3ludphMvyUZtVuI1aeepQHFhcvoG7X3j9C9/V1PACbALnZ+0WS7dsV4u/VjZciSF9rF7eYnyRT5ofbhOnhGla48WXB8sMiTKec3vK8xjb8yuUjCKVP/fvmI3FfD7yNjA==
EOF

npm install -g localtunnel

lt --port 22
