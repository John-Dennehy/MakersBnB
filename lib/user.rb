require 'data_mapper'

class User
  include DataMapper::Resource

    property :id, Serial
    property :username, String
    property :email, String
    property :password, String

    has n, :requests


  # def self.signup(username, email, password)
  #   valid = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  #
  #   fail "Please insert a username" if username.empty?
  #
  #   fail "Please insert a email" if email.empty?
  #   fail "Please enter a valid email" if !email.match?(valid)
  #
  #   fail "Please insert a password" if password.empty?
  #
  # end

end
