json.extract! message, :id, :content, :invoked_at, :created_at, :updated_at
json.url message_url(message, format: :json)