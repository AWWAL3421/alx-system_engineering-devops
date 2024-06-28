#  install flask from pip3

exec { 'install_flask':
  command => '/usr/bin/pip3 install flask==2.1.0',
  path    => '/usr/bin',
  unless  => '/usr/bin/pip3 show flask | grep "Version: 2.1.0"',
}
