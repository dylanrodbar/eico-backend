class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :projectname
      t.string :workplace
      t.date :initialdate
      t.date :finaldate
      t.string :description
      t.integer :user

      t.timestamps
    end
  end
end
