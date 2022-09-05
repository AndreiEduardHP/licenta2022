require 'test_helper'

class TripsimagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tripsimages_index_url
    assert_response :success
  end

end
