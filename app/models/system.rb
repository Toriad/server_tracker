class System < ActiveRecord::Base
  attr_accessible :name, :operating_system, :motherboard, :processor, :memory
  
  belongs_to :server
end
