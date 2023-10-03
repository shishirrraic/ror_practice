class CreateNonScaffoldSkills < ActiveRecord::Migration[7.0]
  def change
    create_table :non_scaffold_skills do |t|
      t.string :name
      t.integer :experience

      t.timestamps
    end
  end
end
