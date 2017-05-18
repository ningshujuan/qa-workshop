require 'selenium-webdriver'

Given (/^navigate to the registration page$/) do
  @registration_page = RegistrationPage.new
end

When (/^input mandatory registration information$/) do
  @registration_page.fill_registration_form
  
end

# Then (/^submit the registration informantion$/) do


# end



