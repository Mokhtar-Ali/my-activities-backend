class Category < ApplicationRecord
    has_many :activities
    
    validates :category_type, uniqueness: true
    validates :category_type, presence: true
end
 