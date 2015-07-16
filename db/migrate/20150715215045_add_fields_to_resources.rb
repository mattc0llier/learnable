class AddFieldsToResources < ActiveRecord::Migration
  def change
  	add_column :resources, :difficulty, :integer
  	add_column :resources, :content_type, :integer
  	add_column :resources, :location, :string
  	add_column :resources, :license, :string
  end
end
