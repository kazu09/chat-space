class CreateUsersGroupnames < ActiveRecord::Migration[5.0]
  def change
    create_table :users_groupnames do |t|
      t.references :user, foreign_key: true
      t.references :groupnames, foreign_key: true
      t.timestamps
    end
  end
end
