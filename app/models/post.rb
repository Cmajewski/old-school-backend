class Post < ApplicationRecord
    belongs_to :category
    has_many :comments
    validates :title,:image_url,:description,:size,:price, presence: true
    
end
