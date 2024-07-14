class Renametypetostyle < ActiveRecord::Migration[7.1]
  def change
    rename_column :teas, :type, :style
  end
end
