require 'test_helper'

class PitchesControllerTest < ActionController::TestCase
  setup do
    @pitch = pitches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pitches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pitch" do
    assert_difference('Pitch.count') do
      post :create, pitch: { headline: @pitch.headline, job_id: @pitch.job_id, user_id: @pitch.user_id }
    end

    assert_redirected_to pitch_path(assigns(:pitch))
  end

  test "should show pitch" do
    get :show, id: @pitch
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pitch
    assert_response :success
  end

  test "should update pitch" do
    put :update, id: @pitch, pitch: { headline: @pitch.headline, job_id: @pitch.job_id, user_id: @pitch.user_id }
    assert_redirected_to pitch_path(assigns(:pitch))
  end

  test "should destroy pitch" do
    assert_difference('Pitch.count', -1) do
      delete :destroy, id: @pitch
    end

    assert_redirected_to pitches_path
  end
end
