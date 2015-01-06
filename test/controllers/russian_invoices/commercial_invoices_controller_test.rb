require 'test_helper'

module RussianInvoices
  class CommercialInvoicesControllerTest < ActionController::TestCase
    test "should get create" do
      get :create
      assert_response :success
    end

  end
end
