class Forum < ApplicationRecord
  belongs_to :user

  validates :topic, presence: true, length: {minimum: 3, maximum: 50 }

end
