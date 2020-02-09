class AddTypeOfToBonsais < ActiveRecord::Migration[6.0]
  def change
    add_column :bonsais, :type_of, :string
  end
end
