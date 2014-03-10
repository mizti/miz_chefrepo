name "project"
description "project specific settings"
run_list "create_db_settings",
         "opsgw_app::firewall",
         "opsgw_app::webserver"

default_attributes(
)
