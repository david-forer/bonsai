class Cart < ApplicationRecord
    # has_many :bonsai_items, dependent: :destroy

    # def add_bonsai(bonsai) 
    #     current_item = bonsai_items.find_by(bonsai_id: bonsai.id)

    #     if bonsai_item
    #         current_item.increment(:quantity)
    #     else
    #         current_item = bonsai_items.build(bonsai_id: bonsai.id)
    #     end
    #     current_item
    # end

    # def total_price 
    #     bonsai.price.to_a.sum {|bonsai| bonsai.total_price}
    # end

end
