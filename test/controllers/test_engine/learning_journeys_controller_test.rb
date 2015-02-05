require 'test_helper'

module TestEngine
  class LearningJourneysControllerTest < ActionController::TestCase
    setup do
      @learning_journey = learning_journeys(:one)
    end

    test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:learning_journeys)
    end

    test "should get new" do
      get :new
      assert_response :success
    end

    test "should create learning_journey" do
      assert_difference('LearningJourney.count') do
        post :create, learning_journey: {  }
      end

      assert_redirected_to learning_journey_path(assigns(:learning_journey))
    end

    test "should show learning_journey" do
      get :show, id: @learning_journey
      assert_response :success
    end

    test "should get edit" do
      get :edit, id: @learning_journey
      assert_response :success
    end

    test "should update learning_journey" do
      patch :update, id: @learning_journey, learning_journey: {  }
      assert_redirected_to learning_journey_path(assigns(:learning_journey))
    end

    test "should destroy learning_journey" do
      assert_difference('LearningJourney.count', -1) do
        delete :destroy, id: @learning_journey
      end

      assert_redirected_to learning_journeys_path
    end
  end
end
