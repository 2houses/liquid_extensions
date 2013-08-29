require 'locomotivecms_solid'

%w{tags}.each do |dir|
  Dir[File.join(File.dirname(__FILE__), 'liquid_extensions', dir, '*.rb')].each { |lib| require lib }
end