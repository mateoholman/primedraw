require 'test_helper'

class ProjectsControllerTest < ActionController::TestCase
  setup do
    @project = projects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:projects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project" do
    assert_difference('Project.count') do
      post :create, project: { budget: @project.budget, description: @project.description, has_contract_code: @project.has_contract_code, has_cost_code: @project.has_cost_code, has_job_code: @project.has_job_code, has_lender_budget_category: @project.has_lender_budget_category, has_project_budget_category: @project.has_project_budget_category, name: @project.name }
    end

    assert_redirected_to project_path(assigns(:project))
  end

  test "should show project" do
    get :show, id: @project
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project
    assert_response :success
  end

  test "should update project" do
    patch :update, id: @project, project: { budget: @project.budget, description: @project.description, has_contract_code: @project.has_contract_code, has_cost_code: @project.has_cost_code, has_job_code: @project.has_job_code, has_lender_budget_category: @project.has_lender_budget_category, has_project_budget_category: @project.has_project_budget_category, name: @project.name }
    assert_redirected_to project_path(assigns(:project))
  end

  test "should destroy project" do
    assert_difference('Project.count', -1) do
      delete :destroy, id: @project
    end

    assert_redirected_to projects_path
  end
end
