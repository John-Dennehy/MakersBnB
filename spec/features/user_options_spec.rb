feature 'options to view or host' do
  scenario 'user can choose to view' do
    user_signup
    click_button 'Explore spaces'
    expect(current_path).to eq '/view-spaces'
  end

  scenario 'user can choose to host' do
    user_signup
    click_button 'Host a space'
    expect(current_path).to eq '/host-space'
  end
end
