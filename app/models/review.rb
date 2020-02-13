class Review < ApplicationRecord
    
    belongs_to :bonsai
    belongs_to :user
   
end
