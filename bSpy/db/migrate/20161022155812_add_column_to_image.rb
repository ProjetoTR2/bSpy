class AddColumnToImage < ActiveRecord::Migration
  def change
    add_column :images, :file, :bytea
  end
end
