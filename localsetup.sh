#!/usr/bin/env bash
set -eo pipefail

vagrant up
vagrant provision

cat ~/.ssh/id_rsa.pub | vagrant ssh -c  "sudo sshcommand acl-add dokku aubrey"
