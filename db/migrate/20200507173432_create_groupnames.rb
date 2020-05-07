class CreateGroupnames < ActiveRecord::Migration[5.0]
  def change
    create_table :groupnames do |t|
      t.string :groupnames, null: false
      t.timestamps
    end
  end
end
