class CreateBonsais < ActiveRecord::Migration[6.0]
  def change
    create_table :bonsais do |t|
      t.string :name
      t.string :type
      t.text :description
      t.integer :price
      t.integer :rating

      t.timestamps
    end
  end
end
