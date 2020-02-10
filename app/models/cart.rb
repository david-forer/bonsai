class Cart < ApplicationRecord
    has_many :bonsai_items, dependent: :destroy

end
