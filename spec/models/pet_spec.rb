require 'spec_helper'

describe Pet do
  describe 'validations' do
    let(:blank) {[nil,'']}

    it { should have_valid(:name).when('Foo') }
    it { should_not have_valid(:name).when(*blank) }
  end

  describe 'associations' do
    it { should have_many(:owner_pets) }
    it { should have_many(:owners).through(:owner_pets) }
  end
end
