require 'test_helper'

module L12n
  class DistrictsControllerTest < ActionController::TestCase
    test "should get index" do
      get :index
      assert_response :success
    end

  end
end
