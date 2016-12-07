class AddCameraidToImage < ActiveRecord::Migration
  def change
    add_column :images, :cameraid, :integer
  end
end
