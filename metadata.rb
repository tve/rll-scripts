name        "rll"
maintainer  "Thorsten von Eicken"
description "RLL test scripts"
version     "0.1.0"

recipe      "rll::rll-init", "Initializes repositories and minor RLL-related things"
recipe      "rll::rll-collectd", "Installs and configures collectd for RightScale monitoring"
recipe      "rll::rll-test-script", "Test operational script"
recipe      "rll::rll-shutdown-reason", "Print out the reason for shutdown"

attribute   "HOSTNAME",
  :display_name => "Hostname for this server",
  :required => "required",
  :type => "string",
  :default => "RS_SERVER_NAME",
  :recipes => ["rll::rll-init"]

attribute   "COLLECTD_SERVER",
  :display_name => "RightScale monitoring server to send data to",
  :required => "required",
  :type => "string",
  :default => "RS_SKETCHY",
  :recipes => ["rll::rll-collectd"]

attribute   "RS_INSTANCE_UUID",
  :display_name => "RightScale monitoring ID for this server",
  :required => "required",
  :type => "string",
  :default => "RS_INSTANCE_UUID",
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
  :default => "AWS_ACCESS_KEY_ID",
  :recipes => ["rll::rll-test-script"]

