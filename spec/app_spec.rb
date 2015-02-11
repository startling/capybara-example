require 'capybara/dsl'

feature "getting a timestamp" do
  scenario "clicking the button gets a timestamp" do
    visit '/'
    find('div.text-button').click
    expect(page).to have_selector('div.text-button.done')
  end
end
