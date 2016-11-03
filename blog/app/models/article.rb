class Article < ApplicationRecord
	has_many :comments, dependent: :destroy
	validates :title, presence: true, length: {minimum: 5}
	#validates :email, format: {with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i, message: "not a proper email address"}
	before_save :capitalize_text

	protected
		def capitalize_text
			self.text = self.text.upcase
		end
end
