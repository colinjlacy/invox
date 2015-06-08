class Invoice < ActiveRecord::Base
	belongs_to :user
	validates_associated :user
	validates :title, presence: true
	validates :due_date, presence: true
	validates :charge_amount, presence: true, numericality: {only_integer: true}
	validates :user_id, presence: true
end
