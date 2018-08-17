class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :host_id
      t.integer :guest_id
    end
  end   
end
