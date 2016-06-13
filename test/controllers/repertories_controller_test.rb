require 'test_helper'

class RepertoriesControllerTest < ActionController::TestCase
  setup do
    @repertory = repertories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:repertories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create repertory" do
    assert_difference('Repertory.count') do
      post :create, repertory: { date_repertory: @repertory.date_repertory, document: @repertory.document, inscription: @repertory.inscription, last_name: @repertory.last_name, name: @repertory.name, num_inscription: @repertory.num_inscription, num_repertory: @repertory.num_repertory, register: @repertory.register, time_repertory: @repertory.time_repertory, user_id: @repertory.user_id }
    end

    assert_redirected_to repertory_path(assigns(:repertory))
  end

  test "should show repertory" do
    get :show, id: @repertory
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @repertory
    assert_response :success
  end

  test "should update repertory" do
    patch :update, id: @repertory, repertory: { date_repertory: @repertory.date_repertory, document: @repertory.document, inscription: @repertory.inscription, last_name: @repertory.last_name, name: @repertory.name, num_inscription: @repertory.num_inscription, num_repertory: @repertory.num_repertory, register: @repertory.register, time_repertory: @repertory.time_repertory, user_id: @repertory.user_id }
    assert_redirected_to repertory_path(assigns(:repertory))
  end

  test "should destroy repertory" do
    assert_difference('Repertory.count', -1) do
      delete :destroy, id: @repertory
    end

    assert_redirected_to repertories_path
  end
end
