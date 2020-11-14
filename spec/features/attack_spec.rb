feature 'Attacking' do
  scenario 'attack Player 2 and confirm attack' do
    sign_in_and_play
    click_button('Attack!')
    expect(page).to have_content('Constantine attacked Samantha!')
  end

  scenario 'reduce Player 2 hit points by 10' do
    sign_in_and_play
    click_button('Attack!')
    click_button('OK')
    expect(page).not_to have_content('Samantha: 100HP')
    expect(page).to have_content('Samantha: 90HP')
  end

  scenario 'attack Player 1 and confirm attack' do
    sign_in_and_play
    click_button('Attack!')
    click_button('OK')
    click_button('Attack')
    expect(page).to have_content('Samantha attacked Constantine')
  end

  scenario 'reduce Player 1 hit points by 10' do
    sign_in_and_play
    click_button('Attack!')
    click_button('OK')
    click_button('Attack!')
    click_button('OK')
    expect(page).not_to have_content('Constantine: 100HP')
    expect(page).to have_content('Constantine: 90HP')
  end
end
