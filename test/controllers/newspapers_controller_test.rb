require 'test_helper'

class NewspapersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get newspapers_index_url
    assert_response :success
  end

end
