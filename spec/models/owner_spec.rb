require 'spec_helper'

describe Owner do
  describe 'validations' do
    let(:blank) {[nil,'']}

    it { should have_valid(:first_name).when('Foo') }
    it { should_not have_valid(:first_name).when(*blank) }

    it { should have_valid(:last_name).when('Bar') }
    it { should_not have_valid(:last_name).when(*blank) }

    it { should have_valid(:email).when('name@company.com') }
    it { should_not have_valid(:email).when(*blank) }
  end

  describe 'associations' do
    it { should have_many(:owner_pets) }
    it { should have_many(:pets).through(:owner_pets) }
  end

end
