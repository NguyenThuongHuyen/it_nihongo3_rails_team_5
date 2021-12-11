class CreateYoutubeChannelReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :youtube_channel_reviews do |t|
      t.integer :user_id
      t.integer :youtube_channel_id
      t.integer :rating
      t.text :review

      t.timestamps
    end
  end
end
