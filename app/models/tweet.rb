class Tweet < ApplicationRecord
    validates :text, presence: true
    belongs_to :users
    has_many :comments  # commentsテーブルとのアソシエーション
  def self.search(search)
    if search != ""
      Tweet.where('text LIKE(?)', "%#{search}%")
    else
      Tweet.all
    end
  end
end
