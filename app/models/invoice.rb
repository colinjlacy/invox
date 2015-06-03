class Invoice < ActiveRecord::Base
	has_one :user
	validates_associated :user
	validates :title, presence: true
	validates :due_date, presence: true
	validates :charge_amount, presence: true, numericality: {only_integer: true}
end
