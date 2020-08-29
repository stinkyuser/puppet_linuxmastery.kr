class webapp::db {

  $wp_root_password = hiera('wp_root_password')
  $wp_db_name = hiera('wp_db_name')
  $wp_user = hiera('wp_user')
  $wp_user_password = hiera('wp_user_password')

  class { 'mysql::server':
    root_password => "${wp_root_password}",
    restart => true,
  }

  mysql::db { "${wp_db_name}":
    user => "${wp_user}",
    password => "${wp_user_password}",
    grant => ['ALL'],
  }
}

