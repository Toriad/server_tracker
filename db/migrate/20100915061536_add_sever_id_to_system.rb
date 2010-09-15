class AddSeverIdToSystem < ActiveRecord::Migration
  def self.up
    add_column :systems, :server_id, :integer
    add_column :systems, :name, :string
  end

  def self.down
    remove_column :systems, :server_id
    remove_column :systems, :name
  end
end
