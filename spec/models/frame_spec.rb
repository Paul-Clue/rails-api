# rubocop:disable all
require 'rails_helper'

RSpec.describe Frame, type: :model do
  it { should validate_presence_of(:make) }
end
