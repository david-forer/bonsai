class AddImageToBonsais < ActiveRecord::Migration[6.0]
  def change
    add_column :bonsais, :image, :string
  end
end
