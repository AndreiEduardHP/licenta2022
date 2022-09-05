require 'test_helper'

class SelectTripControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get select_trip_index_url
    assert_response :success
  end

end
