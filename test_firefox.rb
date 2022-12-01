# Login validation test case

# Require your selenium driver gem
require 'selenium-webdriver'

# Launch the Firefox browser
driver = Selenium::WebDriver.for :firefox
# driver = Selenium::WebDriver.for(firefox)

# Maximize the window
driver.manage.window.maximize

# Get to the website
driver.get 'https://demo.guru99.com/test/newtours/'

# Locate username text box
user_name_field = driver.find_element(:name, 'userName')

# Type 'Selenium' in the user name text box
user_name_field.send_keys('selenium')

# Locate password text box
password_field = driver.find_element(:name, 'password')

# Type 'password' as the password in the password text box
password_field.send_keys('selenium')

# Locate the 'login' button
login_button = driver.find_element(:name, 'submit')

# Click on the 'login' button
login_button.click
sleep(3)

# Check if the login was successful
raise 'Test Failed' unless driver.title == 'Login: Mercury Tours'

# Quit the browser
driver.quit
