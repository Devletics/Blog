class Post < ActiveRecord::Base
  has_many :comments, dependent: :destroy ##this is referencing the posting controller telling it they are related.
  validates :title, presence: true, length: {minimum: 5}
  validates :body, presence: true
end
