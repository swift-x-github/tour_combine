class EmployeesController < ApplicationController
  before_action :set_department
  before_action :set_employee, only: [:show, :edit, :update, :destroy]

  # GET departments/1/employees
  def index
    @employees = @department.employees
  end

  # GET departments/1/employees/1
  def show
  end

  # GET departments/1/employees/new
  def new
    @employee = @department.employees.build
  end

  # GET departments/1/employees/1/edit
  def edit
  end

  # POST departments/1/employees
  def create
    @employee = @department.employees.build(employee_params)

    if @employee.save
      redirect_to([@employee.department, @employee], notice: 'Employee was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT departments/1/employees/1
  def update
    if @employee.update_attributes(employee_params)
      redirect_to department_employees_url(@department)
    else
      render action: 'edit'
    end
  end

  # DELETE departments/1/employees/1
  def destroy
    @employee.destroy

    redirect_to department_employees_url(@department)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_department
      @department = Department.find(params[:department_id])
    end

    def set_employee
      #@employee = @department.employees.find(params[:id])
      @employee = @department.employees.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def employee_params
      params.require(:employee).permit(:name, :active, :department_id)
    end
end
