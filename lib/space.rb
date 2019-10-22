
class Space 
  attr_reader :id, :name, :description, :ppn, :dates_unavailable

  def initialize(id:, name:, description:, ppn:)
    @id = id
    @name = name
    @description = description
    @ppn = ppn
    @dates_unavailable = []
  end

  def add_date_unavailable(date:)
    @dates_unavailable << date
  end

end