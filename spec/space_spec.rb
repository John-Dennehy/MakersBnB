require 'date'

describe Space do

  describe 'initialization' do

    it 'starts with a name' do
      expect(subject.name).to eq "London"
    end

    it 'starts with a description' do
      expect(subject.description).to eq "Beautiful place to stay"
    end

    it 'starts with a price per night' do
      expect(subject.ppn).to eq 5000
    end

    it 'starts with an empty dates unavailable array' do
      expect(subject.dates_unavailable).to eq []
    end
  end

  describe 'add dates space is unavailable' do

    it 'dates_unavailable array is not empty when date added' do
      date = Date.new(2019,12,20)
      subject.add_date_unavailable(date: date)
      expect(subject.dates_unavailable).not_to be_empty
    end

    it 'pushes the date into the dates_unavailable array' do
      date = Date.new(2019,12,20)
      subject.add_date_unavailable(date: date)
      expect(subject.dates_unavailable).to include date
    end
  end
end
