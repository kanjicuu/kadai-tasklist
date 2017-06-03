class List < ApplicationRecord
  validates :content, presence: true, lenght: {maximum: 255}
  validates :status, presence: true, lenght: {maximum: 10}
end
