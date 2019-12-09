require "capybara"
require "capybara/cucumber"
require "site_prism"
require "json"
require "selenium-webdriver"
require "httparty"
require "rspec"

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.configure do |config|
  config.default_driver = :selenium
  config.default_max_wait_time = 30
  config.app_host = "https://the-internet.herokuapp.com"
end