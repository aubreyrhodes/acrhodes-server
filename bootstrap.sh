#!/usr/bin/env bash
set -eo pipefail

wget -qO- https://raw.github.com/progrium/dokku/v0.2.3/bootstrap.sh | sudo DOKKU_BRANCH=subdir_vhost DOKKU_REPO=https://github.com/aubreyrhodes/dokku.git bash

cd /var/lib/dokku/plugins
git clone https://github.com/jeffutter/dokku-postgresql-plugin postgresql
dokku plugins-install
dokku postgresql:start
