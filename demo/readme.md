récupéré depuis http://wiki.archlinux.fr/Environnement_chroot
#chroot minimale

mkdir chroot_env
./chroot.sh chroot_env bash /bin/bash bash ls cp mv rm cat more mkdir touch

#démo puppet
sudo apt-get install puppet
sudo puppet apply demo_puppet.pp
sudo puppet apply demo_puppet_clean.pp
