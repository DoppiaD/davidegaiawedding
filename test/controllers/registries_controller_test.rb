require 'test_helper'

class RegistriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get registries_index_url
    assert_response :success
  end

end
