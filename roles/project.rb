name "project"
description "project specific settings"
run_list "create_db_settings",
         "app_settings::firewall",
         "app_settings::webserver"

default_attributes(
)
