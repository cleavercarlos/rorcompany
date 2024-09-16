class CreateUsers < ActiveRecord::Migration[7.2]
  def change
    create_table :users do |t|
      t.string :email
      t.string :name
      t.integer :role
      t.string :avatar

      t.timestamps
    end
  end
end
