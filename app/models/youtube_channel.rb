class YoutubeChannel < ApplicationRecord
    has_one_attached :image
    has_many :youtube_channel_review, -> { order "created_at DESC"}


end
