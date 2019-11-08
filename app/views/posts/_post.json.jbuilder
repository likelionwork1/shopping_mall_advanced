json.extract! post, :id, :user, :item, :content, :created_at, :updated_at
json.url post_url(post, format: :json)
