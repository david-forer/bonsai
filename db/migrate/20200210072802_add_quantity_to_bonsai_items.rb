class AddQuantityToBonsaiItems < ActiveRecord::Migration[6.0]
  def change
    add_column :bonsai_items, :quantity, :integer, default: 1
  end
end
