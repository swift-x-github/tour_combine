json.extract! department_employee, :id, :name, :active, :department_id, :created_at, :updated_at
json.url department_employee_url(department_employee, format: :json)
