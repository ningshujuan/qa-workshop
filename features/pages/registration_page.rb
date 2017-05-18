require 'selenium-webdriver'

class RegistrationPage

	def initialize
		@driver = Selenium::WebDriver.for :chrome
		@driver.navigate.to "https://www.infoq.com/reginit.action?&orig=%2F%23mainLogin"
	end

	def fill_registration_form
		@driver.find_element(:id, 'userprofile_firstName').send_keys("Shujuan")
		@driver.find_element(:id, 'userprofile_lastName').send_keys("Ning")
		@driver.find_element(:id, 'userprofile_email').send_keys("71kk090723@qq.com")
		@driver.find_element(:id, 'userprofile_password').send_keys("Elsa1226")
		@driver.find_element(:id, 'userprofile_confirmedPassword').send_keys("Elsa1226")
		@driver.find_element(:id, 'userProfile_companyName').send_keys("TW")
		@driver.find_element(:id, 'userProfile_role').send_keys("Other")
		@driver.find_element(:id, 'userprofile_industry').send_keys("Utility")  
		@driver.find_element(:id, 'userprofile_employeeNum').send_keys("100 or less")
		@driver.find_element(:id, 'userprofile_country').send_keys("China")
		#driver.find_element(:id, 'send').click 
	end
end