class Micropost < ActiveRecord::Base
  attr_accessible :content
  belongs_to :user

  validates :content, presence: true, length: { maximum: 140 }
  validates :user_id, presence: true

  # note DESC means descending from newest to oldest in SQL
  default_scope order: 'microposts.created_at DESC'
end
