class CreateCalendars < ActiveRecord::Migration[5.0]
  def change
    create_table :calendars do |t|
      t.string :title
      t.string :description
      t.date :date

      t.timestamps
    end
  end
end
