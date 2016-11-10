class AddColumnToImages < ActiveRecord::Migration
  def change
    add_column :images, :data_de_criacao, :timestamp
  end
end
