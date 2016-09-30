module UserValidator

	def self.validate email, logged_in_user

		return email.empty?
		return email == logged_in_user.email

		User.find_by(email: email)
	end

end