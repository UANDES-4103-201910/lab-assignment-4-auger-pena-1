class Category < ApplicationRecord
   validates :price, numericality: { greater_than_or_equal_to: 0 } 
   has_many :tickets

   
end
