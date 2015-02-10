require 'capybara/dsl'

feature "getting a timestamp" do
  scenario "clicking the button gets a timestamp" do
    visit '/'
    find('div.text-button').click
    expect(page).to have_selector('div.text-button.done')
    expect(page).not_to have_content('Generate some random text.')
  end
end
