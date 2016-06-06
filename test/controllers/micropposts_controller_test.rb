require 'test_helper'

class MicroppostsControllerTest < ActionController::TestCase
  setup do
    @microppost = micropposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:micropposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create microppost" do
    assert_difference('Microppost.count') do
      post :create, microppost: { content: @microppost.content, user_id: @microppost.user_id }
    end

    assert_redirected_to microppost_path(assigns(:microppost))
  end

  test "should show microppost" do
    get :show, id: @microppost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @microppost
    assert_response :success
  end

  test "should update microppost" do
    patch :update, id: @microppost, microppost: { content: @microppost.content, user_id: @microppost.user_id }
    assert_redirected_to microppost_path(assigns(:microppost))
  end

  test "should destroy microppost" do
    assert_difference('Microppost.count', -1) do
      delete :destroy, id: @microppost
    end

    assert_redirected_to micropposts_path
  end
end
