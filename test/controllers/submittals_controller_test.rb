require 'test_helper'

class SubmittalsControllerTest < ActionController::TestCase
  setup do
    @submittal = submittals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:submittals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create submittal" do
    assert_difference('Submittal.count') do
      post :create, submittal: { BR: @submittal.BR, PR: @submittal.PR, date: @submittal.date, firstName: @submittal.firstName, lastName: @submittal.lastName, location: @submittal.location, req: @submittal.req, status: @submittal.status, submitter: @submittal.submitter }
    end

    assert_redirected_to submittal_path(assigns(:submittal))
  end

  test "should show submittal" do
    get :show, id: @submittal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @submittal
    assert_response :success
  end

  test "should update submittal" do
    patch :update, id: @submittal, submittal: { BR: @submittal.BR, PR: @submittal.PR, date: @submittal.date, firstName: @submittal.firstName, lastName: @submittal.lastName, location: @submittal.location, req: @submittal.req, status: @submittal.status, submitter: @submittal.submitter }
    assert_redirected_to submittal_path(assigns(:submittal))
  end

  test "should destroy submittal" do
    assert_difference('Submittal.count', -1) do
      delete :destroy, id: @submittal
    end

    assert_redirected_to submittals_path
  end
end
