class Removepostcolumns < ActiveRecord::Migration[5.0]
  def change
    remove_column :posts, :relevants
    remove_column :posts, :indifferents
    remove_column :posts, :excitings
  end
end
