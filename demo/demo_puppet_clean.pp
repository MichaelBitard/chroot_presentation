$username = 'tours'
$groupId = 'jug'

user { $username:
  ensure           => 'absent',
  comment          => ',,,',
  password         => '$username',
  gid     	   => $groupId,

  password_max_age => '99999',
  password_min_age => '0',
  home => "/home/$username",
  shell => "/bin/bash",
  groups => ['sudo'],
}

group { $groupId:
  ensure => absent,
  require => User[$username],
}

file { "/home/$username/":
  ensure  => absent,
  force   => true,
  require => User[$username],
}
