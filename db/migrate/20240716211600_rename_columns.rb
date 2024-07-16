class RenameColumns < ActiveRecord::Migration[7.1]
  def change
    rename_column :teas, :caffeineLevel, :caffeine_level;
    rename_column :teas, :colorDescription, :color_description;
    rename_column :teas, :tasteDescription, :taste_description;
  end
end
