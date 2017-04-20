class ForumPost < ApplicationRecord
  belongs_to :user_id
  belongs_to :forum_id
end
