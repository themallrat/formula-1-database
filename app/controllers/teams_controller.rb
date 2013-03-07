class TeamsController < ApplicationController

  def index
    @teams=Team.all
  end

  def new
    @team=Team.new
  end

  def create
    @team=Team.new(params[:team])
    if @team.save
      redirect_to teams_path
    else
      render :new
    end
  end

  def edit
    @team=Team.find(params[:id])
  end

  def update
    @team=Team.find(params[:id])
    if @team.update_attributes(params[:team])
      redirect_to teams_path
    else
      render :edit
    end
  end

  def destroy
    @team=Team.find(params[:id])
    @team.destroy
    redirect_to teams_path
  end
end