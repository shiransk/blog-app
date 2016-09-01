class ChanchTableName < ActiveRecord::Migration[5.0]
  def change
    rename_table :posts_by_categories, :categorized_posts
  end
end
