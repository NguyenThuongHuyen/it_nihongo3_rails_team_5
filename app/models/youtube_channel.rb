class YoutubeChannel < ApplicationRecord
    has_one_attached :image
    has_many :youtube_channel_review, -> { order "created_at DESC"}
validate :correct_image_type

def correct_image_type
        if (image.attached? && !image.content_type.in?(%w(image/jpeg image/png)))
            errors.add(:image, 'must be a JPEG or PNG.')
        elsif image.attached? ==false
            errors.add(:image, 'must be attached.')
        end
    end

end
