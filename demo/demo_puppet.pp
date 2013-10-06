$username = 'tours'
$groupId = 'jug'

user { $username:
  ensure           => 'present',
  comment          => ',,,',
  password         => $username,
  gid     	   => $groupId,

  require => Group[$groupId],
  home => "/home/$username",
  shell => "/bin/bash",
  groups => ['sudo'],
}

group { $groupId:
  ensure => present,
}

file { "/home/tours/":
  ensure => directory,
  require => User[$username],
}
