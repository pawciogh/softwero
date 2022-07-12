class Question < ApplicationRecord
  belongs_to :course
  belongs_to :category
  has_many :answers, dependent: :destroy
  accepts_nested_attributes_for :answers, allow_destroy: true

  validates :answers, presence: true

end
