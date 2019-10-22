feature 'options to view or host' do
  scenario 'user can choose to view' do
    user_signup
    click_button 'Host a space'
    expect(page).to have_content("Add your space")
  end
end
