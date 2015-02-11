require 'capybara/dsl'


100.times do
  feature "getting a timestamp" do
    scenario "clicking the button gets a timestamp" do
      visit '/'
      find('div.text-button').click
      expect(find('div.text-button').text).to match /This is line number 4999/
    end
  end
end
