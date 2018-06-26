class Changeeducation < ActiveRecord::Migration[5.0]
  def change
    rename_column :educations, :usertype, :user
  end
end
