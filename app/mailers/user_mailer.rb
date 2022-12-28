class UserMailer < ApplicationMailer
	default from: 'trino@mail.ru'

	def welcome_email
		@user = params[:user]
		@url = 'http://195.2.85.76/login'
		mail(to: @user.email, subject: "Добро пожаловать из почты!")
	end
end
