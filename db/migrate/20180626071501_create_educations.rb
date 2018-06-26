class CreateEducations < ActiveRecord::Migration[5.0]
  def change
    create_table :educations do |t|
      t.string :titlename
      t.string :school
      t.date :initialdate
      t.date :finaldate
      t.string :description
      t.integer :usertype

      t.timestamps
    end
  end
end
