require_relative '../../datamapper_setup.rb'
require 'user'


describe User do

  subject(:user) { described_class }

  # describe ".createUser" do
  #   it "saves User to db returning a new User object with the DB id" do
  #     user1 = User.create(username: "username1", email: "something", password: "anything")
  #     expect(user1.username).to eq "username1"
  #     expect(user1.email).to eq "roberta.mangiapanegmail.com"
  #     expect(user1.password).to eq "anything"
  #   end
  # end


  # describe "#signup" do
  #
  #   it "doesnt allows a user to signup by providing empty username " do
  #     username = ""
  #     email = "something"
  #     password = "123"
  #     expect{ user.signup(username, email, password) }.to raise_error "Please insert a username"
  #   end
  #
  #   it "doesnt allows a user to signup by providing empty email " do
  #     username = "username"
  #     email = ""
  #     password = "123"
  #     expect{ user.signup(username, email, password) }.to raise_error "Please insert a email"
  #   end
  #
  #   it "doesnt allows a user to signup by providing an invalid email " do
  #     username = "username"
  #     email = "invalid"
  #     password = "123"
  #     expect{ user.signup(username, email, password) }.to raise_error "Please enter a valid email"
  #   end
  #
  #   it "doesnt allows a user to signup by providing empty password " do
  #     username = "username"
  #     email = "something@gmail.com"
  #     password = ""
  #     expect{ user.signup(username, email, password) }.to raise_error "Please insert a password"
  #   end
  # end

end
