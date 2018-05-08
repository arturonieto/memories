class Group < ApplicationRecord
	has_many :students, dependent: :destroy
end
