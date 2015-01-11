class User < ActiveRecord::Base
  has_many :links, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :votes


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
