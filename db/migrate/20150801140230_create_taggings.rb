class CreateTaggings < ActiveRecord::Migration
  def change
    create_table :taggings do |t|
      t.belongs_to :topic, index: true
      t.belongs_to :resource, index: true

      t.timestamps
    end
  end
end
