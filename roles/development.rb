name "development"
description "development server base settings"
run_list "yum::epel",
         "ruby_build",
         "rbenv::system",
         "git",
         "mysql::server",
         "sqlite",
         "postgresql",
         "runit",
      	 "install_gems"
default_attributes(
  "mysql" => {
    "server_root_password" => "DbPassword",
    "server_repl_password" => "DbPassword",
    "server_debian_password" => "DbPassword",
    "bind_address" => "127.0.0.1"
  }
)


override_attributes(
  "rbenv" => {
    "rubies" => ["1.9.3-p545"],
    "system" => [
      {
        "rubies" => ["1.9.3-p545"]
      }
    ]
  }
)
