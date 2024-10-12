class ChangeTypes < ActiveRecord::Migration[7.2]
  def change # 更改列的数据类型
    rename_table :goods, :apohealth
    change_column :apohealth, :url, :string, null: false
    change_column :apohealth, :product_id, :string, null: false
    change_column :apohealth, :existence, :string, null: false
    change_column :apohealth, :title, :string, null: false
    change_column :apohealth, :sku, :string, null: false
    change_column :apohealth, :price, :decimal, precision: 10, scale: 2, null: false
    rename_column :apohealth, :weight, :weight_g
  end
end
