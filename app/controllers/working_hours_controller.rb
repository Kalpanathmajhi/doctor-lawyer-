class WorkingHoursController < ApplicationController
  before_action :authenticate_user! # Add authentication logic if using Devise
  
  def index
    @working_hours = WorkingHour.all
  end
  
  def new
    @working_hour = WorkingHour.new
  end
  
  def create
    @working_hour = WorkingHour.new(working_hour_params)
    
    if @working_hour.save
      redirect_to working_hours_path, notice: 'Working hour was successfully created.'
    else
      render :new
    end
  end
  
  def edit
    @working_hour = WorkingHour.find(params[:id])
  end
  
  def update
    @working_hour = WorkingHour.find(params[:id])
    
    if @working_hour.update(working_hour_params)
      redirect_to working_hours_path, notice: 'Working hour was successfully updated.'
    else
      render :edit
    end
  end
  
  private
  
  def working_hour_params
    params.require(:working_hour).permit(:day, :start_time, :end_time)
  end
end
