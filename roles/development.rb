name "development"
description "miz's development server"
run_list "yum::epel",
         "ruby_build",
         "rbenv::user",
         "rbenv::system",
         "git",
         "mysql::server",
         "sqlite",
         "postgresql",
         "application",
         "apache2",
         #"passenger_apache2",
         "runit",
         #"unicorn",
         "install_gems"
default_attributes(
  "mysql" => {
    "server_root_password" => "Fdradfa3ds",
    "server_repl_password" => "Fdradfa3ds",
    "server_debian_password" => "Fdradfa3ds"
  }
)

override_attributes(
  "rbenv" => {
    "rubies" => ["1.9.3-p545"],
    "system" => [
      {
        "rubies" => ["1.9.3-p545"],
        "global" => "1.9.3-p545"
      }
    ]
  }
)
