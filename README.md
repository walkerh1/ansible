# local-setup-as-code
Ansible playbook for setting up a new macos machine.

## Instructions
1. `sh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
2. `brew install git ansible`
3. `ansible-playbook local.yml --ask-vault-pass`
4. `ansible-playbook local.yml -t {tag_name}` (just one subtask)
