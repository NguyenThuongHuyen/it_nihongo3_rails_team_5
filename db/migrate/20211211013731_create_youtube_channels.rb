class CreateYoutubeChannels < ActiveRecord::Migration[6.0]
  def change
    create_table :youtube_channels do |t|
      t.string :title
      t.text :description
      t.string :owner

      t.timestamps
    end
  end
end
