require 'date'
require 'space'

describe Space do
subject(:space) {described_class.new(id: 1, name: 'London', description: 'Beautiful place to stay', ppn: 5000 )} 
  describe 'initialization' do

    it 'starts with an id' do
      expect(space.id).to eq 1
    end


    it 'starts with a name' do
      expect(space.name).to eq "London"
    end

    it 'starts with a description' do
      expect(space.description).to eq "Beautiful place to stay"
    end

    it 'starts with a price per night' do
      expect(space.ppn).to eq 5000
    end

    it 'starts with an empty dates unavailable array' do
      expect(space.dates_unavailable).to eq []
    end
  end

  describe 'add dates space is unavailable' do

    it 'dates_unavailable array is not empty when date added' do
      date = Date.new(2019,12,20)
      space.add_date_unavailable(date: date)
      expect(space.dates_unavailable).not_to be_empty
    end

    it 'pushes the date into the dates_unavailable array' do
      date = Date.new(2019,12,20)
      space.add_date_unavailable(date: date)
      expect(space.dates_unavailable).to include date
    end
  end
end
