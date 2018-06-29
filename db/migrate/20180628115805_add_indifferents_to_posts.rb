class AddIndifferentsToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :indifferents, :integer
  end
end
