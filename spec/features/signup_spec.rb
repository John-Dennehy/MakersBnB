feature 'signup' do
  scenario 'allows a potential user to signup' do
    user_signup
    expect(current_path).to eq '/new-user'
    have_content "Welcome to MakersBnB "
  end
end
