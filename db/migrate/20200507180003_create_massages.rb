class CreateMassages < ActiveRecord::Migration[5.0]
  def change
    create_table :massages do |t|
      t.text :body
      t.string :image
      t.references :users, foreign_key: true
      t.references :groupnames, foreign_key: true
      t.timestamps
    end
  end
end
