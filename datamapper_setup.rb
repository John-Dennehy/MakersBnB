require 'data_mapper'
require 'dm-postgres-adapter'
require 'dm-validations'

if ENV['RACK_ENV'] == 'test'
  database = 'makers_bnb_test'
else
  database = 'makers_bnb'
end

DataMapper.setup(:default, "postgres://localhost:5432/#{database}")

require_relative 'lib/user.rb'

require_relative 'lib/space.rb'

require_relative 'lib/request.rb'


DataMapper.finalize
DataMapper.auto_upgrade!
