class StaffController < ApplicationController
  #before_action :authenticate_account!
  #before_action except: [:index]
  
  #before_action :set_employees, only: [:show, :edit, :update, :destroy]
  #before_action :authenticate_user!, :except => [:index]
  before_action :authenticate_account!, except: [:index, :show]
  
  def index
    @employees = Employee.all.order('created_at DESC').page(params[:page]).per_page(2)
  end
   
end
