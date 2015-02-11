require 'capybara/dsl'

feature "getting a timestamp" do
  scenario "clicking the button gets a timestamp" do
    visit '/'
    find('div.text-button').click
    expect(find('div.text-button').text.length).to be > 30
    expect(page).to have_selector('div.text-button.done')
  end
end
