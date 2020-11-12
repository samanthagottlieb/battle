feature 'Testing infrastructure' do
  scenario "Who will be going to battle?" do
    visit '/'
    expect(page).to have_content("Who will be going to battle?")
  end
end
