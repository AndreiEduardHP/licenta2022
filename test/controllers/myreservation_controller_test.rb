require 'test_helper'

class MyreservationControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get myreservation_index_url
    assert_response :success
  end

end
