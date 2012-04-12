class SandwichMailer < ActionMailer::Base
  default from: "hey@make_sandwich.com"

	def sandwich_mail(sandwich)
		@sandwich = sandwich
		@user = User.find(@sandwich.user_id)
		mail(to: @user.email, :subject => "Time to make a sandwich.")
	end
end
