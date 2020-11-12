feature 'Display hit points' do
  scenario 'displays player hit points' do
    visit '/'
    fill_in('name_1', with: 'Constantine')
    fill_in('name_2', with: 'Samantha')
    click_button('Submit')
    expect(page).to have_content('Constantine: 100hp')
    expect(page).to have_content('Samantha: 100hp')
  end
end
