require_relative '../../app.rb'

describe Battle, type: :feature do
  it "Who will be going to battle?" do
    visit '/'
    expect(page).to have_content("Who will be going to battle?")
  end

  it 'allows players to input names, submit form and see names on screen' do
    visit '/'
    fill_in('name_1', with: 'Constantine')
    fill_in('name_2', with: 'Samantha')
    click_button('Submit')
    expect(page).to have_content('Constantine')
    expect(page).to have_content('Samantha')
  end
end
