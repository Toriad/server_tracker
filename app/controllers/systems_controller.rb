class SystemsController < ApplicationController
  def index
    @systems = System.all
  end
  
  def show
    @system = System.find(params[:id])
  end
  
  def new
    @system = System.new
  end
  
  def create
    @system = System.new(params[:system])
    if @system.save
      flash[:notice] = "Successfully created system."
      redirect_to @system
    else
      render :action => 'new'
    end
  end
  
  def edit
    @system = System.find(params[:id])
  end
  
  def update
    @system = System.find(params[:id])
    if @system.update_attributes(params[:system])
      flash[:notice] = "Successfully updated system."
      redirect_to @system
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @system = System.find(params[:id])
    @system.destroy
    flash[:notice] = "Successfully destroyed system."
    redirect_to systems_url
  end
end
