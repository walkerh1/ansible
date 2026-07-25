# local-setup-as-code
Ansible playbook for setting up a new mac.

## Instructions
1. `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
2. `brew install ansible` (macOS comes with git installed)
3. `git clone https://github.com/walkerh1/ansible.git`
4. `ansible-playbook ansible/local.yml --ask-become-pass --ask-vault-pass`
5. `ansible-playbook ansible/local.yml -t {tag_name}` (just one subtask)
