class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCXpSbAvl/A1oB06v0V474mYh1dip/JO19h3Uc0PSLaIJUSJ3Jr41EdAdGpWWVIw47RdZsVWZn0vhI2X40DBJCgW166RZV7sfbgQXnOgiRL+mpLwT3sKfDBsl4jk4Bc6BhvWTsgan8A59it7YaYt8dh6K/cXzs4Jhw0EUa21BAZrL1WReqq4T5+juqYiwEyYRT1A+HXYgxv0rgYqfma3BBATD1Np+cwx92VcwtcM2a07X3Ig9oV7GNfjX2yE+3KYi0krbNT6Nm3j58zB13/oA+0EKwiiEaaIsTY3voGIPTWYFZrgnkYrppr9jfw7u3x/SFrfRKmXAiWMcLkHNsiR103',
  }  
}
