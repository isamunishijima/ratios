class ChangeDataCostOfGoodsSoldToNumbers < ActiveRecord::Migration[5.2]
  def change
    change_column :numbers, :cost_of_goods_sold, :integer
  end
end
