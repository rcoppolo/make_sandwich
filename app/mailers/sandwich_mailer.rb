class SandwichMailer < ActionMailer::Base
  default from: "hey@make_sandwich.com"

	def sandwich_mail(sandwich)
		@sandwich = sandwich
		@user = User.find(@sandwich.user_id)
		mail(to: "make_sandwich@generalthings.com", :subject => "Time to make a sandwich.")
	end
end
