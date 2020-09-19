class PostSerializer < ActiveModel::Serializer
  attributes :id,:title,:image_url,:description,:size,:price, :likes, :availability, :category_id

  has_many :comments
end
