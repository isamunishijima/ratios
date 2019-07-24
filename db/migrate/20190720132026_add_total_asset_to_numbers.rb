class AddTotalAssetToNumbers < ActiveRecord::Migration[5.2]
  def change
    add_column :numbers, :total_asset, :integer
  end
end
