class Educationus < ActiveRecord::Migration[5.0]
  def change
    rename_column :educations, :user, :user_id
  end
end
