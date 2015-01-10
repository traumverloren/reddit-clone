class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :link
  validates :message, :user_id, :link_id, presence: true
end
