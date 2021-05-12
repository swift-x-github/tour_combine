class StaffController < ApplicationController
  before_action only: [:index]
  def index
    @employees = Employee.all.order('created_at DESC').page(params[:page]).per_page(2)
  end
end
