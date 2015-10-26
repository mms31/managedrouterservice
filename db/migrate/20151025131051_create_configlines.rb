class CreateConfiglines < ActiveRecord::Migration
  def change
    create_table :configlines do |t|
      t.integer :router_id
      t.integer :linenumber
      t.string :lineconfig

      t.timestamps null: false
    end
  end
end
