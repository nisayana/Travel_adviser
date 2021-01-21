class AddLoveToLikes < ActiveRecord::Migration[6.0]
  def change
    add_column :likes, :love, :integer
  end
end
