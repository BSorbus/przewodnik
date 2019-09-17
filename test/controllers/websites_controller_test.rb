require 'test_helper'

class WebsitesControllerTest < ActionDispatch::IntegrationTest
  test "should get esod" do
    get websites_esod_url
    assert_response :success
  end

  test "should get pit" do
    get websites_pit_url
    assert_response :success
  end

  test "should get pue" do
    get websites_pue_url
    assert_response :success
  end

  test "should get netpar" do
    get websites_netpar_url
    assert_response :success
  end

end
