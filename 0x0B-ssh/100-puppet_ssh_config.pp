# Setting up my client config file

include stdlib

file { '/home/user/.ssh/config':
  ensure  => 'file',
  owner   => 'user',
  group   => 'user',
  mode    => '0644',
  content => template('mymodule/ssh_config.erb'),
}
