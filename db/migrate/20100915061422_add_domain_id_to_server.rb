class AddDomainIdToServer < ActiveRecord::Migration
  def self.up
    add_column :servers, :domain_id, :integer
  end

  def self.down
    remove_column :servers, :domain_id
  end
end
