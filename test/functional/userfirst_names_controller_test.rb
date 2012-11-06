require 'test_helper'

class UserfirstNamesControllerTest < ActionController::TestCase
  setup do
    @userfirst_name = userfirst_names(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:userfirst_names)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create userfirst_name" do
    assert_difference('UserfirstName.count') do
      post :create, userfirst_name: { email: @userfirst_name.email, last_name: @userfirst_name.last_name, password: @userfirst_name.password, skype: @userfirst_name.skype, twitter: @userfirst_name.twitter, zipcode: @userfirst_name.zipcode }
    end

    assert_redirected_to userfirst_name_path(assigns(:userfirst_name))
  end

  test "should show userfirst_name" do
    get :show, id: @userfirst_name
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @userfirst_name
    assert_response :success
  end

  test "should update userfirst_name" do
    put :update, id: @userfirst_name, userfirst_name: { email: @userfirst_name.email, last_name: @userfirst_name.last_name, password: @userfirst_name.password, skype: @userfirst_name.skype, twitter: @userfirst_name.twitter, zipcode: @userfirst_name.zipcode }
    assert_redirected_to userfirst_name_path(assigns(:userfirst_name))
  end

  test "should destroy userfirst_name" do
    assert_difference('UserfirstName.count', -1) do
      delete :destroy, id: @userfirst_name
    end

    assert_redirected_to userfirst_names_path
  end
end
