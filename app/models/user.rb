class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :sent_shouts, class_name: :shout, foreign_key: :sender_id
  has_many :received_shouts, class_name: :shout, foreign_key: :receiver_id

  has_many :likes
  has_many :comments

end