class Teacher < ApplicationRecord
	validates_uniqueness_of :title
end
