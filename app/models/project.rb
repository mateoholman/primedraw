class Project < ActiveRecord::Base
	resourcify
	validates :name, length: {in: 3..35}, presence: true
	validates :budget, numericality: {is_greater_than_or_equal_to: 0}
end
