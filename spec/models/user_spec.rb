require 'spec_helper'

describe User do

  before do
    @user = User.new(name: "Example User", password: "mypassword")
  end

  subject { @user }

  it { should respond_to(:name) }
  it { should respond_to(:password) }

  it { should be_valid }

  describe "when name is not present" do
    before { @user.name = " " }
    it { should_not be_valid }
  end

  describe "when password is not present" do
    before { @user.password = " " }
    it { should_not be_valid }
  end
end