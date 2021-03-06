# /status for 'upness', e.g. for load balancer
# /status/all to show all dependencies
# /status/<name-of-check> for a specific check (e.g. for nagios warning)

OkComputer.mount_at = 'status' # mounts at /status
OkComputer.check_in_parallel = true

# REQUIRED checks, required to pass for /status/all
#  individual checks also avail at /status/<name-of-check>
OkComputer::Registry.register 'ruby_version', OkComputer::RubyVersionCheck.new

env = ENV['RAILS_ENV'] || 'test'
solr_url = Blacklight.blacklight_yml[env]['url']
OkComputer::Registry.register 'solr', OkComputer::HttpCheck.new(solr_url + "/admin/ping")
