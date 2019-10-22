require 'space'

require_relative '../../datamapper_setup.rb'

describe Space do
subject(:space) { described_class.create(id: 1, name: 'London', description: 'Beautiful place to stay', ppn: 5000 ) }

  describe ".create" do
   it "saves space to db returning a new object with the DB id" do
     this_space = Space.create(name: "my_place", description: "A nice place to stay", ppn: 4000)
     expect(this_space.name).to eq "my_place"
     expect(this_space.description).to eq "A nice place to stay"
     expect(this_space.ppn).to eq 4000
   end
  end

  describe '.all' do
    it 'lists all of the saved spaces' do
      create_space = Space.create(name: "my_place", description: "A nice place to stay", ppn: 4000)
      spaces = Space.all

      expect(spaces).to include create_space
      expect(spaces.last.name).to eq 'my_place'
      expect(spaces.last.description).to eq 'A nice place to stay'
      expect(spaces.last.ppn).to eq 4000
    end
  end

  # describe 'add dates space is unavailable' do
  #
  #   it 'dates_unavailable array is not empty when date added' do
  #     date = Date.new(2019,12,20)
  #     space.add_date_unavailabgit ble(date: date)
  #     expect(space.dates_unavailable).not_to be_empty
  #   end
  #
  #   it 'pushes the date into the dates_unavailable array' do
  #     date = Date.new(2019,12,20)
  #     space.add_date_unavailable(date: date)
  #     expect(space.dates_unavailable).to include date
  #   end
  # end


end
