#chroot minimale
'''récupéré depuis http://wiki.archlinux.fr/Environnement_chroot'''

```bash
mkdir chroot_env
./chroot.sh chroot_env bash /bin/bash bash ls cp mv rm cat more mkdir touch
sudo chroot chroot_env
```

#démo puppet

sudo apt-get install puppet

sudo puppet apply demo_puppet.pp

sudo puppet apply demo_puppet_clean.pp


#démo ansible
git clone https://github.com/ansible/ansible.git

source ansible/hacking/env-setup

ansible-playbook demo_ansible.yml --ask-sudo-pass -i ansible_hosts

ansible-playbook demo_ansible_clean.yml --ask-sudo-pass -i ansible_hosts
