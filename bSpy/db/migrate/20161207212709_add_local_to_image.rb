class AddLocalToImage < ActiveRecord::Migration
  def change
    add_column :images, :local, :string
  end
end
