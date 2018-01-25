class CreateUserTable < ActiveRecord::Migration[5.1]
  def change
    create_table :user_tables do |t|
      t.string :email
      t.string :password
      t.string :encrypted_password
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.timestamps
    end
  end
end
