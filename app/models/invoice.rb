class Invoice < ActiveRecord::Base
	validates :title, presence: true
	validates :due_date, presence: true
	validates :charge_amount, presence: true, numericality: {only_integer: true}
end
