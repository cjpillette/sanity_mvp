class Genre < ApplicationRecord

  validates :theme, presence: true, length: {minimum: 3, maximum: 50 }

end
