# frozen_string_literal: true

require 'selenium-webdriver'

# features/pages/login_page.rb # Page object for Mercury Tours' login home page
class LoginPage
  def initialize(driver)
    @driver = driver
  end

  def navigate
    @driver.get('https://demo.guru99.com/test/newtours/')
  end

  def login(username, password)
    @driver.find_element(:name, 'userName').send_keys(username)
    @driver.find_element(:name, 'password').send_keys(password)
    @driver.find_element(:name, 'submit').click
  end

  def title
    @driver.title
  end
end
