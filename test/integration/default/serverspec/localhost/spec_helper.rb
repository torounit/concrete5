require 'serverspec'
set :backend, :exec
$LOAD_PATH.concat Dir.glob('/opt/chef/embedded/lib/ruby/gems/2.1.0/gems/*/lib')
require 'ohai'

RSpec.configure do |c|
  ENV['LANG'] = 'C'
end

ohai = Ohai::System.new
ohai.all_plugins
@@ohaidata = ohai.data
