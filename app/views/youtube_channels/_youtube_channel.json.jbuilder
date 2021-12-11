json.extract! youtube_channel, :id, :title, :description, :owner, :created_at, :updated_at
json.url youtube_channel_url(youtube_channel, format: :json)
