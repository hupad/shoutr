class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :sent_shouts, class_name: :shout, foreign_key: :sender_id
  has_many :received_shouts, class_name: :shout, foreign_key: :receiver_id

  has_many :likes
  has_many :comments

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "75x75>" }
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
  #validates :avatar, attachment_presence: true

  def full_name
  	self.first_name + " " + self.last_name
  end
end