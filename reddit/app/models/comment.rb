class Comment < ApplicationRecord
  validates :content, presence: true

  belongs_to :comments,
    foreign_key: :parent_comment_id,
    class_name: 'Comment'

  has_many :child_comments,
    foreign_key: :parent_comment_id,
    class_name: 'Comment'

  belongs_to :author,
    foreign_key: :author_id,
    class_name: 'User'

  belongs_to :post,
    foreign_key: :post_id,
    class_name: 'Post'
end
