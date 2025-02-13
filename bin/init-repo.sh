#!/bin/bash

set -e

# Exit if the OS is not macOS
if [[ "$OSTYPE" != "darwin"* ]]; then
  echo "Devbox does not support Ansible on Linux. Exiting..."
  exit 1
fi

git config core.hooksPath .git-hooks
