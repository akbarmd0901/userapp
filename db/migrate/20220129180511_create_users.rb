class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :password, null: false
      t.string :username
      t.string :confirm_password

      t.timestamps
    end
  end
end



