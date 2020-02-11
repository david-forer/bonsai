class BonsaiItem < ApplicationRecord
  belongs_to :bonsai
  belongs_to :cart

   def total_price
    bonsai.price.to_i * quantity.to_i
  end

end
