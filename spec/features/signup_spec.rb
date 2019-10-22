feature 'signup' do
  scenario 'allows a potential user ro signup' do
    visit('/')
    fill_in('username', with: 'Roberta')
    fill_in :email, with: 'roberta.mangiapane@gmail.com'
    fill_in :password, with: "123"
    click_button 'SignUp'
    expect(page).to have_content "Welcome to MakersBnB "
  end
end
