#!/usr/bin/env bash
set -eo pipefail

vagrant up

cat ~/.ssh/id_rsa.pub | vagrant ssh -c  "sudo sshcommand acl-add dokku aubrey"
vagrant ssh -c "sudo sh -c 'echo \"acrhodesstaging.com\" > /home/dokku/VHOST'"
