feature 'Display hit points' do
  scenario 'displays player hit points' do
    sign_in_and_play
    expect(page).to have_content('Constantine: 100HP')
    expect(page).to have_content('Samantha: 100HP')
  end
end
