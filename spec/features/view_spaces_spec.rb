feature 'options to view or host' do
  scenario 'user can choose to view' do
    user_signup
    click_button 'Explore spaces'
    expect(page).to have_content("room")
    expect(page).to have_content("house")
    expect(page).to have_content("super room")
  end
end
