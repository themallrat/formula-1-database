class DriversController < ApplicationController

  def index
    @drivers=Driver.all
  end

  def new
    @driver=Driver.new
  end

  def create
    @driver=Driver.new(params[:driver])
    if @driver.save
      redirect_to drivers_path
    else 
      render :new
    end
  end

  def edit
    @driver=Driver.find(params[:id])
  end

  def update
    @driver=Driver.find(params[:id])
    if @driver.update_attributes(params[:driver])
      redirect_to drivers_path
    else
      render :edit
    end
  end

  def destroy
    @driver=Driver.find(params[:id])
    @driver.destroy
    redirect_to drivers_path
  end
  
end