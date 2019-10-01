require 'test_helper'

class AcercaDeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get acerca_de_index_url
    assert_response :success
  end

end
