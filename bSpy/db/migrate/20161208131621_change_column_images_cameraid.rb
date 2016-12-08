class ChangeColumnImagesCameraid < ActiveRecord::Migration
  def change
  	change_column :images,:cameraid,:string
  end
end
