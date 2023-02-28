class Employment < ApplicationRecord
	validates :employer,:date_started,:date_employment_ended , presence: true

	belongs_to :user , optional: true
end
