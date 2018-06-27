class Usersusertype < ActiveRecord::Migration[5.0]
  def change
    rename_column :users, :usertype, :usertype_id
  end
end
