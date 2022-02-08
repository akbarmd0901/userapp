class User < ApplicationRecord
	has_secure_password
	has_many :products
	validates :password, uniqueness: { case_sensitive: true }
	validates :password, presence: { message: "must be present username" }
	validates :username, length: { minimum: 6 }
    #validates :password, format: { with: /\A[a-zA-Z]+\z/,
    #message: "only allows letters" }
end
 