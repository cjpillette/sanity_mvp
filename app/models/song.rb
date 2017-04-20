class Song < ApplicationRecord
  belongs_to :genre

  validates :title, presence: true, length: {minimum: 3, maximum: 50 }
  validates :artist, presence: true, length: {maximum: 10 }
  validates :year, presence: true, length: {minimum: 3, maximum: 4 }

end
