class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :full_name
      t.string :position
      t.string :email
      t.string :company

      t.timestamps null: false
    end
  end
end
