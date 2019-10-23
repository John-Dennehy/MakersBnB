class User
  include DataMapper::Resource

    property :id, Serial
    property :username, String
    property :email, String
    property :password, String

    has n, :requests
end

class Space
  include DataMapper::Resource

  property :id, Serial
  property :name, String
  property :description, Text
  property :ppn, Integer
  property :created_at, DateTime

  has n, :requests
end

class Request
  include DataMapper::Resource

  property :id, Serial
  property :start_date, Date
  property :end_date, Date
  property :status, String
  property :created_at, DateTime

  belongs_to :user
  belongs_to :space
end

DataMapper.finalize