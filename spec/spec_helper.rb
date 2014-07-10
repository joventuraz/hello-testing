require 'ChefSpec'
require 'chefspec/berkshelf'

at_exit { ChefSpec::Coverage.report! }
