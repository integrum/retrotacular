require 'test_helper'

class RetrospectivesControllerTest < ActionController::TestCase
  setup do
    @retrospective = retrospectives(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:retrospectives)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create retrospective" do
    assert_difference('Retrospective.count') do
      post :create, retrospective: { close: @retrospective.close, decide_what_to_do: @retrospective.decide_what_to_do, gather_data: @retrospective.gather_data, generate_insights: @retrospective.generate_insights, name: @retrospective.name, set_stage: @retrospective.set_stage }
    end

    assert_redirected_to retrospective_path(assigns(:retrospective))
  end

  test "should show retrospective" do
    get :show, id: @retrospective
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @retrospective
    assert_response :success
  end

  test "should update retrospective" do
    patch :update, id: @retrospective, retrospective: { close: @retrospective.close, decide_what_to_do: @retrospective.decide_what_to_do, gather_data: @retrospective.gather_data, generate_insights: @retrospective.generate_insights, name: @retrospective.name, set_stage: @retrospective.set_stage }
    assert_redirected_to retrospective_path(assigns(:retrospective))
  end

  test "should destroy retrospective" do
    assert_difference('Retrospective.count', -1) do
      delete :destroy, id: @retrospective
    end

    assert_redirected_to retrospectives_path
  end
end
