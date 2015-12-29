require 'capybara/rspec'
require 'sinatra'

# set up sinatra and capybara
disable :run
Sinatra::Application.environment = :test
Sinatra::Application.root = File.dirname(__FILE__) + "/.."
Capybara.app = Sinatra::Application
Capybara.default_driver = :selenium
Capybara.default_selector = :css
Capybara.default_wait_time = 1
# load the actual app.
require Sinatra::Application.root + "/app"


RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
end
