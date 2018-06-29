class AddExcitingsToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :excitings, :integer
  end
end
