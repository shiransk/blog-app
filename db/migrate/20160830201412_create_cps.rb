class CreateCps < ActiveRecord::Migration[5.0]
  def change
    create_table :cps do |t|
      t.integer :category_id
      t.integer :post_id

      t.timestamps
    end
  end
end
