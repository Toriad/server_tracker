class DummiesController < ApplicationController
  
  def create
    @model = params[:model].singularize.camelize.constantize
    
    @model = @model.new
    @attributes = @model.attributes
    
    @test = Array.new
    @attributes.each do |attr|
      case @model.column_for_attribute(attr).type
      when :string
        @model[attr]= Faker::Lorem.sentence(1)
      when :text
        @model[attr]= Faker::Lorem.paragraphs(2).to_s
      else
        @model[attr]= @model[attr]
      end
        
        if @model.column_for_attribute(attr).type == :string
        @test << {"#{attr}" => @model.column_for_attribute(attr).type}
        @model[attr]= Faker::Lorem.sentence(1)
      end
    end
    
    if @model.save
      flash[:success] = "Successfully create Dummy #{params[:model].humanize}."
      redirect_to url_for :controller => params[:model].pluralize, :action => 'index'
    else
      flash[:error] = "Unable to Create dummy #{params[:model].humanize}."
      redirect_to url_for :controller => params[:model].pluralize, :action => 'index'
    end    
  end
end
