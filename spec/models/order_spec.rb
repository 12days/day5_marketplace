require "spec_helper"

describe Order do
  it { should have_many(:products) }
  it { should belong_to(:user) }
end
