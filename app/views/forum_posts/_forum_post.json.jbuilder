json.extract! forum_post, :id, :message, :user_id, :forum_id_id, :created_at, :updated_at
json.url forum_post_url(forum_post, format: :json)
