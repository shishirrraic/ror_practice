class AddNameExperienceToSkills < ActiveRecord::Migration[7.0]
  def change
    add_column :skills, :name, :string
    add_column :skills, :experience, :integer
  end
end
