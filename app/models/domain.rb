class Domain < ActiveRecord::Base
  attr_accessible :name, :description
  
  belongs_to :company
  has_many :accounts
  has_many :servers
end
