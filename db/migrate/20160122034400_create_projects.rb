class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.integer :budget
      t.boolean :has_job_code
      t.boolean :has_cost_code
      t.boolean :has_contract_code
      t.boolean :has_project_budget_category
      t.boolean :has_lender_budget_category

      t.timestamps
    end
  end
end
