class Post < ApplicationRecord
  validates :content, {presence: true, length: {minimum: 10}}
end
