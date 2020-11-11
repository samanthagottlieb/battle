require_relative '../../app.rb'

describe Battle, type: :feature do
  it "displays 'Testing infrastructure working!' on homepage" do
    visit '/'
    expect(page).to have_content('Testing infrastructure working!')
  end
end
