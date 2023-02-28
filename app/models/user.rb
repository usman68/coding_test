class User < ApplicationRecord
	validates :first_name,:last_name,:email_address,:phone_number,presence: true
	validates :first_name,length: {maximum: 25}
	validates :last_name , length: {maximum: 50}
	validates :email_address , format: {with: URI::MailTo::EMAIL_REGEXP,message: "must be a valid email address"}
	validates :phone_number, format: { with: /\A\d{3}-\d{3}-\d{4}\z/, message: "must be in the format xxx-xxx-xxxx" }
	has_many :employments
end
