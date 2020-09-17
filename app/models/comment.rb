class Comment < ApplicationRecord
    belongs_to :post
    validates :username, :comment_text, presence: true
end
