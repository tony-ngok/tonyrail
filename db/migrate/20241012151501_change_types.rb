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

# 运行rails db:migrate时，Rails会自动检测尚未执行的迁移脚本并依次（按照时间戳的顺序）执行它们。
# 故不需要为每个迁移脚本单独运行rails db:migrate：只需执行一次这个命令，所有待迁移的脚本都会按照创建的时间顺序执行。
