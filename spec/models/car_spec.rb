require 'rails_helper'

RSpec.describe Car, type: :model do
  describe 'Association tests' do
    it { should belong_to(:user) }
    it { should have_many(:bookings).dependent(:destroy) }
  end
end
