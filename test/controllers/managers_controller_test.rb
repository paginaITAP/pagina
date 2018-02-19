require 'test_helper'

class ManagersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get managers_index_url
    assert_response :success
  end

end
