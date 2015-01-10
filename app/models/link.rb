class Link < ActiveRecord::Base
  belongs_to :user
  has_many :comments, dependent: :destroy
  validates :title, :url, presence: true
end
