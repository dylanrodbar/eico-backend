class UsertypeId < ActiveRecord::Migration[5.0]
  def change
    rename_column :projects, :user, :user_id
  end
end
