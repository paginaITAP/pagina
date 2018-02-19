require 'test_helper'

class InstitutionalHorizonControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get institutional_horizon_index_url
    assert_response :success
  end

end
