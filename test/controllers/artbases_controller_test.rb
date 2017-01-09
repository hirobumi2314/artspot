require 'test_helper'

class ArtbasesControllerTest < ActionController::TestCase
  setup do
    @artbasis = artbases(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:artbases)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create artbasis" do
    assert_difference('Artbase.count') do
      post :create, artbasis: {  }
    end

    assert_redirected_to artbasis_path(assigns(:artbasis))
  end

  test "should show artbasis" do
    get :show, id: @artbasis
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @artbasis
    assert_response :success
  end

  test "should update artbasis" do
    patch :update, id: @artbasis, artbasis: {  }
    assert_redirected_to artbasis_path(assigns(:artbasis))
  end

  test "should destroy artbasis" do
    assert_difference('Artbase.count', -1) do
      delete :destroy, id: @artbasis
    end

    assert_redirected_to artbases_path
  end
end
