name "project"
description "miz's development server"
run_list "database::mysql"
         "set_database"

default_attributes(
)
override_attributes(
)
