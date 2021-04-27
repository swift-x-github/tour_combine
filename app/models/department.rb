class Department < ApplicationRecord
  has_many :employees

  def percent_complete
    return 0 if total_employees == 0
    (100 * active_employees.to_f / total_employees).round(1)
  end

  def active_employees
    @active_employees ||= employees.active.count
  end

  def total_employees
    @total_employees ||= employees.count
  end

  def status
    case percent_complete.to_i
    when 0
        'Всі працівники неактивні'
    when 100
        'Всі працівники активні'
    else 
        'Частково активні'
    end
   end

   def badge_color
      case percent_complete.to_i
      when 0
        'dark'
      when 100
        'info'
      else
        'primary'
      end
   end


end
