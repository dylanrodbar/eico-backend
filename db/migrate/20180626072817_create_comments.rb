class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :description
      t.integer :user
      t.date :date
      t.integer :post

      t.timestamps
    end
  end
end
