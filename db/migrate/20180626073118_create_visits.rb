class CreateVisits < ActiveRecord::Migration[5.0]
  def change
    create_table :visits do |t|
      t.date :date

      t.timestamps
    end
  end
end
