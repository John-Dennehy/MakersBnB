require 'user'

describe User do

  subject(:user) { described_class.new(username, email, password) }

  let(:username) { double :username }
  let(:email) { double :email }
  let(:password) { double :password }

  describe "#initialize" do

    it "user is created with a username" do
      expect(user.username).to eq(username)
    end

    it "user is created with an email" do
      expect(user.email).to eq(email)
    end

    it "user is created with a password" do
      expect(user.password).to eq(password)
    end

  end

  # describe "#signup" do
  #   it "allows a user to signup by providing a username, password and email" do
  #
  #   end
  # end

end
