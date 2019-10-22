require 'data_mapper'

class Space
  include DataMapper::Resource

  property :id, Serial
  property :name, String
  property :description, Text
  property :ppn, Integer
  property :created_at, DateTime

  # attr_reader :id, :name, :description, :ppn, :dates_unavailable
  #
  # def initialize(id:, name:, description:, ppn:)
  #   @id = id
  #   @name = name
  #   @description = description
  #   @ppn = ppn
  #   @dates_unavailable = []
  # end
  #
  # def add_date_unavailable(date:)
  #   @dates_unavailable << date
  # end

end
