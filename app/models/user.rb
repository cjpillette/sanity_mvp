class User < ApplicationRecord

validates :email, presence: true, length: {minimum: 3, maximum: 50 }
validates :screen_name, presence: true, length: {maximum: 10 }

end
