require 'test_helper'

module TestEngine
  class ProgramModulesControllerTest < ActionController::TestCase
    setup do
      @program_module = program_modules(:one)
    end

    test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:program_modules)
    end

    test "should get new" do
      get :new
      assert_response :success
    end

    test "should create program_module" do
      assert_difference('ProgramModule.count') do
        post :create, program_module: { description: @program_module.description, learning_journey_id: @program_module.learning_journey_id, title: @program_module.title }
      end

      assert_redirected_to program_module_path(assigns(:program_module))
    end

    test "should show program_module" do
      get :show, id: @program_module
      assert_response :success
    end

    test "should get edit" do
      get :edit, id: @program_module
      assert_response :success
    end

    test "should update program_module" do
      patch :update, id: @program_module, program_module: { description: @program_module.description, learning_journey_id: @program_module.learning_journey_id, title: @program_module.title }
      assert_redirected_to program_module_path(assigns(:program_module))
    end

    test "should destroy program_module" do
      assert_difference('ProgramModule.count', -1) do
        delete :destroy, id: @program_module
      end

      assert_redirected_to program_modules_path
    end
  end
end
