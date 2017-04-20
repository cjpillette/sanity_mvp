class ForumPost < ApplicationRecord
  belongs_to :user
  belongs_to :forum

  validates :message, presence: true, length: {minimum: 3, maximum: 140 }

end
