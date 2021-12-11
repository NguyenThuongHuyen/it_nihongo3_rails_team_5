require 'test_helper'

class YoutubeChannelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @youtube_channel = youtube_channels(:one)
  end

  test "should get index" do
    get youtube_channels_url
    assert_response :success
  end

  test "should get new" do
    get new_youtube_channel_url
    assert_response :success
  end

  test "should create youtube_channel" do
    assert_difference('YoutubeChannel.count') do
      post youtube_channels_url, params: { youtube_channel: { description: @youtube_channel.description, owner: @youtube_channel.owner, title: @youtube_channel.title } }
    end

    assert_redirected_to youtube_channel_url(YoutubeChannel.last)
  end

  test "should show youtube_channel" do
    get youtube_channel_url(@youtube_channel)
    assert_response :success
  end

  test "should get edit" do
    get edit_youtube_channel_url(@youtube_channel)
    assert_response :success
  end

  test "should update youtube_channel" do
    patch youtube_channel_url(@youtube_channel), params: { youtube_channel: { description: @youtube_channel.description, owner: @youtube_channel.owner, title: @youtube_channel.title } }
    assert_redirected_to youtube_channel_url(@youtube_channel)
  end

  test "should destroy youtube_channel" do
    assert_difference('YoutubeChannel.count', -1) do
      delete youtube_channel_url(@youtube_channel)
    end

    assert_redirected_to youtube_channels_url
  end
end
