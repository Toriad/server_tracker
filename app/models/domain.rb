class Domain < ActiveRecord::Base
  attr_accessible :name, :description
  
  belongs_to :company
  
  has_many :devices, :as => :device
  has_many :accounts
end
