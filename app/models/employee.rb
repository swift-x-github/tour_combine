class Employee < ApplicationRecord
  belongs_to :department
  scope :active, -> do
    where(active: true)
  end

  def options_for_status
    [
      ['First Option','1'],
      ['Second Option','2']
    ]
  end

  
end


