require 'test_helper'

module TestEngine
  class SessionsControllerTest < ActionController::TestCase
    setup do
      @session = sessions(:one)
    end

    test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:sessions)
    end

    test "should get new" do
      get :new
      assert_response :success
    end

    test "should create session" do
      assert_difference('Session.count') do
        post :create, session: { duration_id: @session.duration_id, has_duration: @session.has_duration, has_module: @session.has_module, learning_journey_id: @session.learning_journey_id, ordinal: @session.ordinal, program_module_id: @session.program_module_id, type: @session.type, workflow_state: @session.workflow_state }
      end

      assert_redirected_to session_path(assigns(:session))
    end

    test "should show session" do
      get :show, id: @session
      assert_response :success
    end

    test "should get edit" do
      get :edit, id: @session
      assert_response :success
    end

    test "should update session" do
      patch :update, id: @session, session: { duration_id: @session.duration_id, has_duration: @session.has_duration, has_module: @session.has_module, learning_journey_id: @session.learning_journey_id, ordinal: @session.ordinal, program_module_id: @session.program_module_id, type: @session.type, workflow_state: @session.workflow_state }
      assert_redirected_to session_path(assigns(:session))
    end

    test "should destroy session" do
      assert_difference('Session.count', -1) do
        delete :destroy, id: @session
      end

      assert_redirected_to sessions_path
    end
  end
end
