# Install Nginx web server with Puppet
class nginx {
  package { 'nginx':
    ensure => installed,
  }

  service { 'nginx':
    ensure => running,
    enable => true,
  }

  file { '/var/www/html/index.html':
    content => 'Hello World!',
  }

  file { '/etc/nginx/sites-available/default':
    ensure => 'file',
    content => "
      server {
        listen 80;
        root /var/www/html;
        index index.html;
        location /redirect_me {
          return 301 /;
        }
      }
    ",
  }

  file { '/etc/nginx/sites-enabled/default':
    ensure => 'link',
    target => '/etc/nginx/sites-available/default',
  }

  exec { 'nginx-reload':
    command     => '/usr/sbin/nginx -s reload',
    refreshonly => true,
  }
}

include nginx
