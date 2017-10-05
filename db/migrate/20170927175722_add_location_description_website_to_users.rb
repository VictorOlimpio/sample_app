class AddLocationDescriptionWebsiteToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :location, :string
    add_column :users, :description, :text
    add_column :users, :website, :string
  end
end
