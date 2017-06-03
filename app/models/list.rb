class List < ApplicationRecord
  validates :content, presence: true, lenght: {maximum: 255}
end
