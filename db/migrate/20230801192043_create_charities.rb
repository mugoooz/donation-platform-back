class CreateCharities < ActiveRecord::Migration[7.0]
  def change
    create_table :charities do |t|
      t.string :name
      t.string :location
      t.string :email
      t.string :phone_number
      t.string :password_digest
      t.text :purpose

      t.timestamps
    end
  end
end
