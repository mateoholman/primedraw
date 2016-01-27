class ProjectsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  respond_to :html


  def index
    @projects = Project.all
    respond_with(@projects)
  end

  def show
    respond_with(@project)
  end

  def new
    @project = Project.new
    respond_with(@project)
  end

  def edit
  end

  def create
    @project = Project.new(project_params)
    @project.save
    respond_with(@project)
  end

  def update
    @project.update(project_params)
    respond_with(@project)
  end

  def destroy
    @project.destroy
    respond_with(@project)
  end

  private
    def set_project
      @project = Project.find(params[:id])
    end

    def project_params
      params.require(:project).permit(:name, :description, :budget, :has_job_code, :has_cost_code, :has_contract_code, :has_project_budget_category, :has_lender_budget_category)
    end

end
