class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :sent_shouts, class_name: :shout, foreign_key: :sender_id
  has_many :received_shouts, class_name: :shout, foreign_key: :receiver_id

  has_many :likes
  has_many :comments

  has_attached_file :avatar, styles: { medium: "300x300", thumb: "75x75" }
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
  
  validate :email_format

  def full_name
  	self.first_name + " " + self.last_name
  end


  private

  def email_format
    if ( self.email.split("@")[1] != "dealersocket.com" )
      errors.add(:email, "You can sign up only with dealersocket email.")
    end
  end

  def liked_shouts
    
    likes = Like.joins(:shout)
                .where('likes.user_id = ?', self.id)
                .pluck(:shout_id, :user_id)
    
    @likes_shout_map = Hash.new
    likes.each do |like|
      @likes_shout_map[like[0]] = like[1]
    end

    @likes_shout_map

  end

end