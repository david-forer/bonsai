class AddBonsaiIdToReviews < ActiveRecord::Migration[6.0]
  def change
    add_column :reviews, :bonsai_id, :integer
  end
end
