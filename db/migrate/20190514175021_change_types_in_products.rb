class ChangeTypesInProducts < ActiveRecord::Migration[5.2]
  def change
    change_column :products, :description, :text   #changes description to text data-type
    change_column :products, :price, :decimal, precision: 8, scale: 2   #changes price to decimal with precision 8
    add_column :products, :in_stock, :boolean, default: true  #adds in_stock column to track true or false if item is in stock
  end
end
