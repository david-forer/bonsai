class Review < ApplicationRecord

    scope :positive, -> { where("rating > 3") }
    
    belongs_to :bonsai
    belongs_to :user
   
end
