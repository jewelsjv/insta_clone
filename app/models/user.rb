class User < ActiveRecord::Base
	#email
	before_save { self.email = email.downcase }
	validates :name, presence: true, length: { maximum: 50 }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitve: false }
	#password
	has_secure_password # works because of password_digest in table
	validates :password, length: { minimum: 6 }
end
