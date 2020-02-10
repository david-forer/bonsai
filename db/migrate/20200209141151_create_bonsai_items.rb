class CreateBonsaiItems < ActiveRecord::Migration[6.0]
  def change
    create_table :bonsai_items do |t|
      t.references :bonsai, null: false, foreign_key: true
      t.belongs_to :cart, null: false, foreign_key: true

      t.timestamps
    end
  end
end
