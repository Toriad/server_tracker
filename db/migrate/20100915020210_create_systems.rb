class CreateSystems < ActiveRecord::Migration
  def self.up
    create_table :systems do |t|
      t.string :operating_system
      t.string :motherboard
      t.string :processor
      t.string :memory
      t.timestamps
    end
  end
  
  def self.down
    drop_table :systems
  end
end
