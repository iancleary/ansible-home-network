# Ansible Playbook Examples

## One off Commands

You have two options.

`Make {target}`, replacing *{target}* with what you want.
This runs the install for that tag only.

If you want to run a check first or run select tags, you can use:

## Only certain tags

```bash
ansible-playbook home_network.yml \
--ask-become-pass \
--tags="docker"
```

## Check

```bash
ansible-playbook home_network.yml \
--ask-become-pass \
--check
```

> Note: Any check against a role that has an `apt_repository` task
> (that has not been installed yet) will fail to
> find the corresponding package in the subsequent `apt` task.
