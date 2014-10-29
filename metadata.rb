name        "rll"
maintainer  "Thorsten von Eicken"
description "RLL test scripts"
version     "0.1.0"

recipe      "rll::rll-init", "Initializes repositories and minor RLL-related things"
recipe      "rll::rll-collectd", "Installs and configures collectd for RightScale monitoring"

attribute   "hostname",
  :display_name => "Hostname for this server",
  :required => "optional",
  :type => "string",
  :default => "env:RS_SERVER_NAME",
  :recipes => ["rll::rll-init"]


