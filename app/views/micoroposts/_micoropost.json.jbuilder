json.extract! micoropost, :id, :content, :user_id, :created_at, :updated_at
json.url micoropost_url(micoropost, format: :json)
