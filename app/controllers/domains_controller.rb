class DomainsController < ApplicationController
  def index
    @domains = Domain.all
  end
  
  def show
    @domain = Domain.find(params[:id])
  end
  
  def new
    @domain = Domain.new
  end
  
  def create
    @domain = Domain.new(params[:domain])
    if @domain.save
      flash[:notice] = "Successfully created domain."
      redirect_to @domain
    else
      render :action => 'new'
    end
  end
  
  def edit
    @domain = Domain.find(params[:id])
  end
  
  def update
    @domain = Domain.find(params[:id])
    if @domain.update_attributes(params[:domain])
      flash[:notice] = "Successfully updated domain."
      redirect_to @domain
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @domain = Domain.find(params[:id])
    @domain.destroy
    flash[:notice] = "Successfully destroyed domain."
    redirect_to domains_url
  end
end
