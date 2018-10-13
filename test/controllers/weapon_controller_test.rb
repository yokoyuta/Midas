require 'test_helper'

class WeaponControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get weapon_top_url
    assert_response :success
  end

end
