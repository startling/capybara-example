require 'capybara/dsl'


100.times do
  feature "getting a timestamp" do
    scenario "clicking the button gets a timestamp" do
      visit '/'
      find('div.text-button').click
      expect(find('div.text-button').text.length).to be > 10000
    end
  end
end
