require 'capybara/dsl'

feature "getting a timestamp" do
  scenario "clicking the button gets a timestamp" do
    visit '/'
    find('div.time-button').click
    find('div.time-button').text.should include("The time is")
  end
end
