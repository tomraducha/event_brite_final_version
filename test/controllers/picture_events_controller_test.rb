require "test_helper"

class PictureEventsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get picture_events_create_url
    assert_response :success
  end
end
