# local-setup-as-code
Ansible playbook for setting up a new macos machine.

## Instructions
1. `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
2. `brew install git ansible`
3. `git clone https://github.com/walkerh1/ansible.git`
4. `ansible-playbook local.yml --ask-become-pass --ask-vault-pass`
5. `ansible-playbook local.yml -t {tag_name}` (just one subtask)
