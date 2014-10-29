name        "rll"
maintainer  "Thorsten von Eicken"
description "RLL test scripts"
version     "0.1.0"

recipe      "rll::rll-init", "Initializes repositories and minor RLL-related things"
recipe      "rll::rll-collectd", "Installs and configures collectd for RightScale monitoring"

attribute   "HOSTNAME",
  :display_name => "Hostname for this server",
  :required => "optional",
  :type => "string",
  :default => "env:RS_SERVER_NAME",
  :recipes => ["rll::rll-init"]

attribute   "COLLECTD_SERVER",
  :display_name => "RightScale monitoring server to send data to",
  :required => "optional",
  :type => "string",
  :default => "env:RS_SKETCHY",
  :recipes => ["rll::rll-collectd"]

attribute   "RS_INSTANCE_UUID",
  :display_name => "RightScale monitoring ID for this server",
  :required => "optional",
  :type => "string",
  :default => "env:RS_INSTANCE_UUID",
  :recipes => ["rll::rll-collectd"]

attribute   "VAR",
  :display_name => "random variable to print",
  :required => "recommended",
  :type => "string",
  :default => "test value",
  :recipes => ["rll::rll-test-script"]

attribute   "CRED",
  :display_name => "some credential",
  :required => "recommended",
  :type => "string",
  :default => "cred:AWS_ACCESS_KEY_ID",
  :recipes => ["rll::rll-test-script"]

