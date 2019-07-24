class CreateNumbers < ActiveRecord::Migration[5.2]
  def change
    create_table :numbers do |t|
      t.string :name
      t.integer :current_asset
      t.integer :cash
      t.integer :receivable
      t.integer :inventory
      t.integer :current_liability
      t.integer :payable
      t.integer :total_liability
      t.integer :total_debt
      t.integer :long_term_debt
      t.integer :short_term_debt
      t.integer :total_equity
      t.integer :sale
      t.integer :EBIT
      t.integer :net_profit
      t.string :cost_of_goods_sold

      t.timestamps
    end
  end
end
