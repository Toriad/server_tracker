class Company < ActiveRecord::Base
  attr_accessible :name, :description
  
  has_many :domains do
    def servers
      @servers ||= Server.find_all_by_domain_id(map(&:id))
    end
  end
end
