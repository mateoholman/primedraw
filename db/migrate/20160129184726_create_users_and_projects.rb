class CreateUsersAndProjects < ActiveRecord::Migration
  def change
    create_table :users_projects, id: false do |t|
    	t.belongs_to :user, index: true
    	t.belongs_to :project, index: true
    end
    add_reference :projects, :user, index: true
    add_reference :users, :project, index: true
  end
end
