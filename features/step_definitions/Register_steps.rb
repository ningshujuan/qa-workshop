require 'selenium-webdriver'

Given (/^I open registration page$/) do
      @registration_page = RegistrationPage.new Selenium::WebDriver.for :chrome
      @registration_page.openSite
end
When (/^I input registration information$/) do |table|
     table.hashes.each do |row|
      	@registration_page.fill_registration_form(row["Name"], row["Value"])
     end
     @registration_page.submit
     sleep(10000)
end





