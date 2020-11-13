feature 'Enter player names' do
  scenario 'allows players to input names, submit form and see names on screen' do
    sign_in_and_play
    expect(page).to have_content('Constantine')
    expect(page).to have_content('Samantha')
  end
end
