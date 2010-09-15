class Server < ActiveRecord::Base
  attr_accessible :name
  belongs_to :domain
  has_one :company, :through => :domai
  has_many :systems
end
