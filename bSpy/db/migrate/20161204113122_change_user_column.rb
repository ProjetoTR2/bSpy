class ChangeUserColumn < ActiveRecord::Migration
  def change
  	change_column :users, :name, :string, null: false
  	change_column :users, :profile_id, :integer, null: false
  end
end
