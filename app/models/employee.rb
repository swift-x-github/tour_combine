class Employee < ApplicationRecord
  belongs_to :department
  scope :active, -> do
    where(active: true)
  end
end


