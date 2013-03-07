class RacesController < ApplicationController

  def index
    @races=Race.all
  end

  def new 
    @race=Race.new
  end

  def create
    @race=Race.new(params[:race])
    if @race.save
      redirect_to races_path
    else
      render :new
    end
  end

  def edit
    @race=Race.find(params[:id])
  end

  def update
    @race=Race.find(params[:id])
    if @race.update_attributes(params[:race])
      redirect_to races_path
    else 
      render :edit
    end
  end

  def destroy
    @race=Race.find(params[:id])
    @race.destroy
    redirect_to races_path
  end


end