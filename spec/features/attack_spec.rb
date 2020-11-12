feature 'Attack' do
  it 'attacks a player and confirms attack' do
    sign_in_and_play
    click_link('Attack!')
    expect(page).to have_content('Constantine has attacked Samantha!')
  end
end
