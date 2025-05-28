# local-setup-as-code
Ansible playbook for setting up a new machine.

## Instructions
`sudo bootstrap.sh` will do everything in one command.
Or if I want to do it one step at a time:
1. `sudo dnf install -y curl git ansible`
2. `git clone https://github.com/walkerh1/ansible.git`
3. `ansible-playbook local.yml --ask-become-pass --ask-vault-pass`

## Running one task
Often I want to update my setup without re-running the entire playbook, e.g. adding a new cli tool or tweaking the setup of an already installed tool.
To do this, I just update or create the "task" in the `tasks` subdirectory and then add tags to each instruction. Then to only run that subtask you can pass the tag to the ansible command:
```
ansible-playbook local.yml -t {tag_name}
```
