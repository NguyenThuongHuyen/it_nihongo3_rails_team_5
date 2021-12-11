json.extract! youtube_channel_review, :id, :user_id, :youtube_channel_id, :rating, :review, :created_at, :updated_at
json.url youtube_channel_review_url(youtube_channel_review, format: :json)
