class AddFileToImage < ActiveRecord::Migration
  def change
    add_column :images, :file, :oid
  end
end
