require 'spec_helper'

describe Pet do
  let(:blank) {[nil,'']}

  it { should have_valid(:name).when('Foo') }
  it { should_not have_valid(:name).when(*blank) }

end
