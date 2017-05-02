class UserMailer < ApplicationMailer
  default from: "gsing1190@gmail.com"

	def contact_form(email, name, message)
    @message = message
      mail(:from => email, 
        :to => 'gsing1190@gmail.com', 
        :subject => "A new contact form message from #{name}")
    end

    def welcome(user)
    	@appname = "Jaimala Purse Emporium"
    	mail( :to => user.email,
    		  :subject => "Thank you for your interest in #{@appname}")
    end

    def paid_order(user, product)
        @user = user
        @product = product
        @appname = "Jaimala Purse Emporium"
        mail( :to => user.email,
              :subject => "Thank you for your order at #{@appname}")
    end


end
