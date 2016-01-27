class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.integer :budget, :default => 0.0
      t.boolean :has_job_code, :default => false
      t.boolean :has_cost_code, :default => false
      t.boolean :has_contract_code, :default => false
      t.boolean :has_project_budget_category, :default => true
      t.boolean :has_lender_budget_category, :default => false

      t.timestamps
    end
  end
end
