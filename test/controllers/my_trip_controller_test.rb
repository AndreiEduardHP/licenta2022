require 'test_helper'

class MyTripControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get my_trip_index_url
    assert_response :success
  end

end
