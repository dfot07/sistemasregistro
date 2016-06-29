require 'test_helper'

class ProhibitionsControllerTest < ActionController::TestCase
  setup do
    @prohibition = prohibitions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prohibitions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prohibition" do
    assert_difference('Prohibition.count') do
      post :create, prohibition: { date_inscription: @prohibition.date_inscription, inscription: @prohibition.inscription, last_name: @prohibition.last_name, name: @prohibition.name, type_prohibition: @prohibition.type_prohibition, user_id: @prohibition.user_id }
    end

    assert_redirected_to prohibition_path(assigns(:prohibition))
  end

  test "should show prohibition" do
    get :show, id: @prohibition
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prohibition
    assert_response :success
  end

  test "should update prohibition" do
    patch :update, id: @prohibition, prohibition: { date_inscription: @prohibition.date_inscription, inscription: @prohibition.inscription, last_name: @prohibition.last_name, name: @prohibition.name, type_prohibition: @prohibition.type_prohibition, user_id: @prohibition.user_id }
    assert_redirected_to prohibition_path(assigns(:prohibition))
  end

  test "should destroy prohibition" do
    assert_difference('Prohibition.count', -1) do
      delete :destroy, id: @prohibition
    end

    assert_redirected_to prohibitions_path
  end
end
