class CommentSerializer < ActiveModel::Serializer
  attributes :id,:username, :comment_text, :post_id
end
