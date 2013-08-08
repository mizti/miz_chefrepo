name "development"
description "miz's development server"
run_list "yum::epel",
         "ruby_build",
         "rbenv::user",
         "git",
         "mysql",
         "sqlite",
         "postgresql",
         "application",
         "apache2",
         "passenger_apache2",
         "runit",
         "unicorn"

override_attributes(
  "rbenv" => {
    "rubies" => ["1.9.3-p448"],
    "user_installs" => [
      {
        "user"  => "miz",
        "rubies" => ["1.9.3-p448"],
        "global" => "1.9.3-p448",
        "gems" => {
          "1.9.3-p448" => [
            {
              "name" => "bundle"
            }
          ]
        }
      },
      {
        "user"  => "ntsurumi",
        "rubies" => ["1.9.3-p448"],
        "global" => "1.9.3-p448",
        "gems" => {
          "1.9.3-p448" => [
            {
              "name" => "bundle"
            }
          ]
        }
      }
    ]
  }
)
