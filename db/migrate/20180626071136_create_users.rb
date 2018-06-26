class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :email
      t.string :title
      t.string :profession
      t.string :workplace
      t.string :media
      t.integer :usertype

      t.timestamps
    end
  end
end
