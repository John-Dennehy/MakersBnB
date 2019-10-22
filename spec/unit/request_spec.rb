require 'request'

require_relative '../../datamapper_setup.rb'


describe Request do

  describe '.create' do
    it 'creates a new request for a space' do
      request = Request.create(user_id: 1, space_id: 1, start_date: 2019-12-20, end_date: 2019-12-21, status: nil)

      expect(request.start_date).to eq 2019-12-20
      expect(request.status).to eq nil
    end
  end

end
