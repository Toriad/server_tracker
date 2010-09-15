class Company < ActiveRecord::Base
  attr_accessible :name, :description
  
  has_many :domains, :include => {:servers => :systems}
end
