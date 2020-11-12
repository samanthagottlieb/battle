feature 'Display hit points' do
  scenario 'displays player hit points' do
    sign_in_and_play
    expect(page).to have_content('Constantine: 100hp')
    expect(page).to have_content('Samantha: 100hp')
  end
end
