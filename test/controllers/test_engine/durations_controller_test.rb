require 'test_helper'

module TestEngine
  class DurationsControllerTest < ActionController::TestCase
    setup do
      @duration = durations(:one)
    end

    test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:durations)
    end

    test "should get new" do
      get :new
      assert_response :success
    end

    test "should create duration" do
      assert_difference('Duration.count') do
        post :create, duration: { learning_journey_id: @duration.learning_journey_id, minutes: @duration.minutes, type: @duration.type }
      end

      assert_redirected_to duration_path(assigns(:duration))
    end

    test "should show duration" do
      get :show, id: @duration
      assert_response :success
    end

    test "should get edit" do
      get :edit, id: @duration
      assert_response :success
    end

    test "should update duration" do
      patch :update, id: @duration, duration: { learning_journey_id: @duration.learning_journey_id, minutes: @duration.minutes, type: @duration.type }
      assert_redirected_to duration_path(assigns(:duration))
    end

    test "should destroy duration" do
      assert_difference('Duration.count', -1) do
        delete :destroy, id: @duration
      end

      assert_redirected_to durations_path
    end
  end
end
