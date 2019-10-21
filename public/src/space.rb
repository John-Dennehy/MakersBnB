
class Space 

  def initialize(name:, description:, ppn:)
    @name = name
    @description = description
    @ppn = ppn
    @dates_unavailable = []
  end

  def add_date_unavailable(date:)
    @dates_unavailable << date
  end

end