$username = 'tours'
$groupId = 'jug'

user { $username:
  ensure           => 'present',
  comment          => ',,,',
  password         => $username,
  gid     	   => $groupId,

  password_max_age => '99999',
  password_min_age => '0',
  require => Group[$groupId],
  home => "/home/$username",
  shell => "/bin/bash",
  groups => ['sudo'],
}

group { $groupId:
  ensure => present,
}
