def user_signup
  visit('/')
  fill_in :username, with: 'something'
  fill_in :email, with: 'something'
  fill_in :password, with: "123"
  click_button 'SignUp'
end
