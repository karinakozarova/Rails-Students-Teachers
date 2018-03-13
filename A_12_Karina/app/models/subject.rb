class Subject < ApplicationRecord
  validates :teacher_id, presence: true
  belongs_to :teacher
end
