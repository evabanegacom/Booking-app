require 'rails_helper'

RSpec.describe 'bookings API', type: :request do
  describe 'GET /bookings' do
    before { get '/api/v1/bookings' }
    it 'user must be authorized to access bookings' do
      json = JSON.parse(response.body)
      print json
      expect(json).not_to be_empty
      expect(json).to eq('message' => 'Please log in', 'loggedIn' => false)
      expect(json.size).to eq(2)
    end

    it 'returns status code 401' do
      expect(response).to have_http_status(401)
    end
  end
end
