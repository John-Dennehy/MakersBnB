require 'user'
require_relative '../../datamapper_setup.rb'

describe User do

  subject(:user) { described_class}
  subject(:user1) {described_class.new(username, email, password)}
  let(:username) { "" }
  let(:email) { "" }
  let(:password) { "" }
  # let(:email) { double :email }
  # let(:password) { double :password }


  it "user is created with a username" do
    expect(user1.username).to eq(username)
  end

  it "user is created with an email" do
    expect(user1.email).to eq(email)
  end

  it "user is created with a password" do
    expect(user1.password).to eq(password)
  end

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
