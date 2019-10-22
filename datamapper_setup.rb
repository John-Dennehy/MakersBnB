require 'data_mapper'

if ENV['RACK_ENV'] == 'test'
  database = 'makers_bnb_test'
else
  database = 'makers_bnb'
end

DataMapper.setup(:default, "postgres://localhost:5432/#{database}")

require_relative 'lib/space.rb'
require_relative 'lib/user.rb'

DataMapper.finalize
DataMapper.auto_upgrade!
