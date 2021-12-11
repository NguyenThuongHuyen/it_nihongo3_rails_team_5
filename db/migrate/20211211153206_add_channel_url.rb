class AddChannelUrl < ActiveRecord::Migration[6.0]
  def change
    add_column :youtube_channels, :channel_URL, :string
  end
end
