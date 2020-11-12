feature 'Attacking' do
  scenario 'attacks a player and confirms attack' do
    sign_in_and_play
    click_link('Attack!')
    expect(page).to have_content('Constantine has attacked Samantha!')
  end

  scenario 'deducts 10 hit points per attack' do
    sign_in_and_play
    click_link('Attack!')
    expect(page).not_to have_content('Constantine: 100hp vs. Samantha: 100hp')
    expect(page).to have_content('Constantine: 100hp vs. Samantha: 90hp')
  end
end
