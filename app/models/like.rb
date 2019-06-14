class Like < ApplicationRecord
  belongs_to :user
  belongs_to :micropost
  
#  has_many :reverses_of_like, class_name: "Like", foreign_key: :like_id
#  has_many :liked, through: :reverses_of_like, source: :user
  
#  def liked(mictopost)
#      self.likes.find_or_create_by(micropost_id: mictopost.id)
#  end

#  def unlike(mictopost)
#    like = self.likes.find_by(micropost_id: mictopost.id)
#    like.destroy if like
#  end

#  def liking?(mictopost)
#    self.liking.include?(mictopost)
#  end
end  
  

