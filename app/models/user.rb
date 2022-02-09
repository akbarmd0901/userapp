class User < ApplicationRecord
	has_secure_password
	has_many :products
	#validates :password, uniqueness: { case_sensitive: false }
	#validates :password, presence: true
	#validates :username, length: { minimum: 6 }
    #validates :password, format: { with: /\A[a-zA-Z]+\z/,
    #message: "only allows letters" }
end
 