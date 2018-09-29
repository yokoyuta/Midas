class Post < ApplicationRecord
  belongs_to :user
  validates :content, {presence: true, length: {minimum: 10}}
  validates :user_id, {presence: true}

  def user
    return User.find_by(id: self.user_id)
  end
end
