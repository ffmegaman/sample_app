class Micropost < ActiveRecord::Base
  attr_accessible :content
  belongs_to :user

  validates :content, presence: true, length: { maximum: 140 }
  validates :user_id, presence: true

  # note DESC means descending from newest to oldest in SQL
  default_scope order: 'microposts.created_at DESC'

  def self.from_users_followed_by(user)
		#followed_user_ids = user.followed_user_ids

		#the following codes are a mixture of Rails, Ruby, and SQL
		followed_user_ids = "SELECT followed_id FROM relationships
												 WHERE follower_id = :user_id"
		where("user_id IN (#{followed_user_ids}) OR user_id = :user_id", 
					user_id: user)
	end
end
