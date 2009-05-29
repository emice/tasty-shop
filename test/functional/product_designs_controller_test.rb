require 'test_helper'

class ProductDesignsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:product_designs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product_designs" do
    assert_difference('ProductDesigns.count') do
      post :create, :product_designs => { }
    end

    assert_redirected_to product_designs_path(assigns(:product_designs))
  end

  test "should show product_designs" do
    get :show, :id => product_designs(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => product_designs(:one).id
    assert_response :success
  end

  test "should update product_designs" do
    put :update, :id => product_designs(:one).id, :product_designs => { }
    assert_redirected_to product_designs_path(assigns(:product_designs))
  end

  test "should destroy product_designs" do
    assert_difference('ProductDesigns.count', -1) do
      delete :destroy, :id => product_designs(:one).id
    end

    assert_redirected_to product_designs_path
  end
end
