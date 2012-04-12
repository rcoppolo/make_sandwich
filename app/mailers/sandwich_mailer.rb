class SandwichMailer < ActionMailer::Base
  default from: "hey@make_sandwich.com"

	def sandwich_mail(sandwich)
		@sandwich = sandwich
		@user = User.find(@sandwich.user_id)
		recipient = "make_sandwich@generalthings.com"
		recipient = "rcoppolo22@gmail.com"
		mail(to: recipient, :subject => "Time to make a sandwich.")
	end
end
