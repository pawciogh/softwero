class Course < ApplicationRecord
  has_many :questions, dependent: :destroy

end
