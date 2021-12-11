require "application_system_test_case"

class YoutubeChannelReviewsTest < ApplicationSystemTestCase
  setup do
    @youtube_channel_review = youtube_channel_reviews(:one)
  end

  test "visiting the index" do
    visit youtube_channel_reviews_url
    assert_selector "h1", text: "Youtube Channel Reviews"
  end

  test "creating a Youtube channel review" do
    visit youtube_channel_reviews_url
    click_on "New Youtube Channel Review"

    fill_in "Rating", with: @youtube_channel_review.rating
    fill_in "Review", with: @youtube_channel_review.review
    fill_in "User", with: @youtube_channel_review.user_id
    fill_in "Youtube channel", with: @youtube_channel_review.youtube_channel_id
    click_on "Create Youtube channel review"

    assert_text "Youtube channel review was successfully created"
    click_on "Back"
  end

  test "updating a Youtube channel review" do
    visit youtube_channel_reviews_url
    click_on "Edit", match: :first

    fill_in "Rating", with: @youtube_channel_review.rating
    fill_in "Review", with: @youtube_channel_review.review
    fill_in "User", with: @youtube_channel_review.user_id
    fill_in "Youtube channel", with: @youtube_channel_review.youtube_channel_id
    click_on "Update Youtube channel review"

    assert_text "Youtube channel review was successfully updated"
    click_on "Back"
  end

  test "destroying a Youtube channel review" do
    visit youtube_channel_reviews_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Youtube channel review was successfully destroyed"
  end
end
