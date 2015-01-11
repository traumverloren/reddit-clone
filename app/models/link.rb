class Link < ActiveRecord::Base
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :votes
  validates :title, :url, presence: true
end
