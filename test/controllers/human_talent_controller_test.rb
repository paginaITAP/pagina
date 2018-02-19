require 'test_helper'

class HumanTalentControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get human_talent_index_url
    assert_response :success
  end

end
