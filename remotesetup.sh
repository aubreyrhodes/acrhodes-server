#!/usr/bin/env bash
set -eo pipefail

ssh root@acrhodes.com "wget -qO- https://raw.githubusercontent.com/aubreyrhodes/acrhodes-server/master/bootstrap.sh | bash"

cat ~/.ssh/id_rsa.pub | ssh root@acrhodes.com "sudo sshcommand acl-add dokku aubrey"
