class CreateCustomers < ActiveRecord::Migration[7.2]
  def change
    create_table :customers do |t|
      t.string :full_name
      t.string :phone
      t.string :email
      t.text :notes

      t.timestamps
    end
  end
end
