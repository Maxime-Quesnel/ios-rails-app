json.extract! post, :id, :title, :published_at, :content, :created_at, :updated_at
json.url post_url(post, format: :json)
