class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :title
      t.string :url
      t.integer :price_in_pence
      t.boolean :free
      t.text :description
      t.boolean :offline

      t.timestamps
    end
  end
end
