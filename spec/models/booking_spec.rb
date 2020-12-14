# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Booking, type: :model do
  describe 'Association tests' do
    it { should belong_to(:car) }
    it { should belong_to(:user) }
  end

  describe 'validation tests' do
    it {
      should validate_presence_of(:username)
    }

    it {
      should validate_presence_of(:description)
    }

    it {
      should validate_presence_of(:model)
    }

    it {
      should validate_presence_of(:date)
    }

    it {
      should validate_presence_of(:city)
    }

    it {
      should validate_length_of(:description)
        .is_at_least(5)
    }
  end
end
