require 'bcrypt'
class User < ApplicationRecord
	include BCrypt
	attr_accessor :password
	after_save :encrpyt_pass

	def encrpyt_pass
		@password=Password.create(:password)
	end
end
