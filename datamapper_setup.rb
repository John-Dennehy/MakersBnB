require 'data_mapper'

DataMapper.setup :default, {
  adapter:  'postgres',
  host:     'localhost',
  database: 'mybnb',
  user:     'bnb_manager',
  password: 'password',
}

require_relative './models'

DataMapper.auto_upgrade!