class PriceToPriceEu < ActiveRecord::Migration[7.2]
  def up
    rename_column :apohealths, :price, :price_eu
  end

  def down
    rename_column :apohealths, :price_eu, :price
  end
end
