require 'selenium-webdriver'

class RegistrationPage < BasePage

    def openSite
       @driver.get "https://www.infoq.com/reginit.action?&orig=%2F%23mainLogin"
    end

    def frist_name
    	@driver.find_element(:id, 'userprofile_firstName')	
    end
    def last_name
    	@driver.find_element(:id, 'userprofile_lastName')	
    end
    def email_address
    	@driver.find_element(:id, 'userprofile_email')	
    end
    def password
    	@driver.find_element(:id,'userprofile_password') 	
    end
    def confirm_password
    	@driver.find_element(:id,'userprofile_confirmedPassword') 	
    end
    def company_name
        @driver.find_element(:id,'userProfile_companyName')  	
    end
    def role_in_your_company
    	@driver.find_element(:id,'userProfile_role')
    end
    def industry
    	@driver.find_element(:id,'userprofile_industry')	
    end
    def company_size 
    	@driver.find_element(:id,'userprofile_employeeNum')
    end

    def country
    	@driver.find_element(:id,'userprofile_country') 	
   
    end
	def fill_registration_form(key,value)
		case key
		     when 'First Name'
		     	key=frist_name
		     when 'Last Name'
		     	key=last_name
		     when 'Email Address'
		     	key=email_address
		     when 'Password'
		     	key=password
		     when 'Confirm password'
		     	key=confirm_password
		     when 'Company name'
		     	key=company_name
			 when 'Role in your company'
			 	key=role_in_your_company
			 when 'Industry'
			 	key=industry
             when 'Company size'
             	key=company_size 
             when 'Country'
             	key=country
		end
        inputToElementWith(key, value)
	end

    def submit
       @driver.find_element("id","sendUserRegistration").click
    end   
end