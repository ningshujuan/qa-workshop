class BasePage
    def initialize driver
		@driver = driver
    end

    def inputToElementWith (element, value)
       element.send_keys value
   end


end