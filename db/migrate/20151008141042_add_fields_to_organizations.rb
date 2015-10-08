class AddFieldsToOrganizations < ActiveRecord::Migration
  def change
  	add_column :organizations, :tag_line, :string
  	add_column :organizations, :logo, :string
  	add_column :organizations, :url, :string
  end
end
