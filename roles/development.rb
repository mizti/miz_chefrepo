name "development"
description "miz's development server"
run_list "yum::epel",
         "ruby_build",
#         "rbenv::user",
         "rbenv::system",
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
    "rubies" => ["1.9.3-p484"],
#    "user_installs" => [
#      {
#        "user"  => "miz",
#        "rubies" => ["1.9.3-p484"],
#        "global" => "1.9.3-p484",
#        "gems" => {
#          "1.9.3-p484" => [
#            {
#              "name" => "bundle"
#            }
#          ]
#        }
#      }
#    ],
    "system" => [
      {
        "rubies" => ["1.9.3-p484"],
        "global" => "1.9.3-p484",
        "gems" => {
          "1.9.3-p484" => [
            {
              "name" => "bundle"
            }
          ]
        }
      }
    ]
  }
)
