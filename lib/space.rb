require 'data_mapper'

class Space
  include DataMapper::Resource

  property :id, Serial
  property :name, String
  property :description, Text
  property :ppn, Integer
  property :created_at, DateTime

  has n, :requests 

end
