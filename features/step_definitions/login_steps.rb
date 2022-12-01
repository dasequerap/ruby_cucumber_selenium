# frozen_string_literal: true

Given('I open the website in a browser') do
  @login_page = LoginPage.new(@driver)
  @login_page.navigate
end

When('I login with credentials {string} and {string}') do |username, password|
  @login_page.login(username, password)
end

When('I login with credential set {}') do |record|
  @test_data = YAML.safe_load(File.read('resources/records.yaml'))
  @login_page.login(@test_data[record]['user_name'], @test_data[record]['password'])
end

Then('Login page is displayed with title {string}') do |title|
  raise "Login Page different than expected: #{@login_page.title}" unless @login_page.title == title
end

Then('Login page is displayed with {string} for {}') do |title, record|
  raise "Login Page different than expected: #{@login_page.title}" unless @login_page.title == @test_data[record][title]
end
