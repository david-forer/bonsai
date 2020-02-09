class AddUserIdToBonsais < ActiveRecord::Migration[6.0]
  def change
    add_column :bonsais, :user_id, :integer
  end
end
