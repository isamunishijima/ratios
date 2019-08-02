class RenameCurrentAssetsColumnToNumbers < ActiveRecord::Migration[5.2]
  def change
    rename_column :numbers, :current_assets, :current_asset
  end
end
