require "application_system_test_case"

class YoutubeChannelsTest < ApplicationSystemTestCase
  setup do
    @youtube_channel = youtube_channels(:one)
  end

  test "visiting the index" do
    visit youtube_channels_url
    assert_selector "h1", text: "Youtube Channels"
  end

  test "creating a Youtube channel" do
    visit youtube_channels_url
    click_on "New Youtube Channel"

    fill_in "Description", with: @youtube_channel.description
    fill_in "Owner", with: @youtube_channel.owner
    fill_in "Title", with: @youtube_channel.title
    click_on "Create Youtube channel"

    assert_text "Youtube channel was successfully created"
    click_on "Back"
  end

  test "updating a Youtube channel" do
    visit youtube_channels_url
    click_on "Edit", match: :first

    fill_in "Description", with: @youtube_channel.description
    fill_in "Owner", with: @youtube_channel.owner
    fill_in "Title", with: @youtube_channel.title
    click_on "Update Youtube channel"

    assert_text "Youtube channel was successfully updated"
    click_on "Back"
  end

  test "destroying a Youtube channel" do
    visit youtube_channels_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Youtube channel was successfully destroyed"
  end
end
