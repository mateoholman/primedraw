class Project < ActiveRecord::Base
	has_and_belongs_to_many :users
	validates :name, length: {in: 3..35}, presence: true
	validates :budget, numericality: {is_greater_than_or_equal_to: 0}
end
