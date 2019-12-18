class CreateChildren < ActiveRecord::Migration[6.0]
  def change
    create_table :children do |t|
      t.string :name
      t.string :nickname
      t.integer :user_id
      t.timestamps
    end
  end
end
