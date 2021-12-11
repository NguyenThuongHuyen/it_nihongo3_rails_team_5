require 'test_helper'

class YoutubeChannelReviewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @youtube_channel_review = youtube_channel_reviews(:one)
  end

  test "should get index" do
    get youtube_channel_reviews_url
    assert_response :success
  end

  test "should get new" do
    get new_youtube_channel_review_url
    assert_response :success
  end

  test "should create youtube_channel_review" do
    assert_difference('YoutubeChannelReview.count') do
      post youtube_channel_reviews_url, params: { youtube_channel_review: { rating: @youtube_channel_review.rating, review: @youtube_channel_review.review, user_id: @youtube_channel_review.user_id, youtube_channel_id: @youtube_channel_review.youtube_channel_id } }
    end

    assert_redirected_to youtube_channel_review_url(YoutubeChannelReview.last)
  end

  test "should show youtube_channel_review" do
    get youtube_channel_review_url(@youtube_channel_review)
    assert_response :success
  end

  test "should get edit" do
    get edit_youtube_channel_review_url(@youtube_channel_review)
    assert_response :success
  end

  test "should update youtube_channel_review" do
    patch youtube_channel_review_url(@youtube_channel_review), params: { youtube_channel_review: { rating: @youtube_channel_review.rating, review: @youtube_channel_review.review, user_id: @youtube_channel_review.user_id, youtube_channel_id: @youtube_channel_review.youtube_channel_id } }
    assert_redirected_to youtube_channel_review_url(@youtube_channel_review)
  end

  test "should destroy youtube_channel_review" do
    assert_difference('YoutubeChannelReview.count', -1) do
      delete youtube_channel_review_url(@youtube_channel_review)
    end

    assert_redirected_to youtube_channel_reviews_url
  end
end
