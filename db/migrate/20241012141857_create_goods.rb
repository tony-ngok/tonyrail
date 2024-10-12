class CreateGoods < ActiveRecord::Migration[7.2]
  def up
    create_table :goods do |t| # 创建表，定义其基本数据类型
      t.timestamps
      t.string :url
      t.string :product_id
      t.boolean :existence
      t.string :title
      t.text :description
      t.string :sku
      t.string :brand
      t.string :category
      t.decimal :price
      t.integer :weight
    end
  end

  def down
    drop_table :goods # 删除表
  end
end
