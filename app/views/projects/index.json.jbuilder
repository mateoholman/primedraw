json.array!(@projects) do |project|
  json.extract! project, :id, :name, :description, :budget, :has_job_code, :has_cost_code, :has_contract_code, :has_project_budget_category, :has_lender_budget_category
  json.url project_url(project, format: :json)
end
