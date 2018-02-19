require 'test_helper'

class PeiControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pei_index_url
    assert_response :success
  end

end
