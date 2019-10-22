require_relative '../../datamapper_setup.rb'
require 'user'


describe User do

  subject(:user) { described_class }
  # let(:username) { "" }
  # let(:email) { "" }
  # let(:password) { "" }
  # let(:email) { double :email }
  # let(:password) { double :password }

  describe "#signup" do

    it "doesnt allows a user to signup by providing empty username " do
      username = ""
      email = "something"
      password = "123"
      expect{ user.signup(username, email, password) }.to raise_error "Please insert a username"
    end

    it "doesnt allows a user to signup by providing empty email " do
      username = "username"
      email = ""
      password = "123"
      expect{ user.signup(username, email, password) }.to raise_error "Please insert a email"
    end

    it "doesnt allows a user to signup by providing an invalid email " do
      username = "username"
      email = "invalid"
      password = "123"
      expect{ user.signup(username, email, password) }.to raise_error "Please enter a valid email"
    end

    it "doesnt allows a user to signup by providing empty password " do
      username = "username"
      email = "roberta.mangiapane@gmail.com"
      password = ""
      expect{ user.signup(username, email, password) }.to raise_error "Please insert a password"
    end
  end

end
