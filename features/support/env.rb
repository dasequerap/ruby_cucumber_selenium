# frozen_string_literal: true

require 'selenium-webdriver'

Before do
  @driver = Selenium::WebDriver.for :firefox
  @driver.manage.window.maximize
  @driver.manage.timeouts.implicit_wait = 10 # seconds
end

After do
  @driver.quit
end
