class RemoveFileFromImage < ActiveRecord::Migration
  def change
    remove_column :images, :file, :oid
  end
end
