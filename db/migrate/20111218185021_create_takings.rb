class CreateTakings < ActiveRecord::Migration
  def change
    create_table :takings do |t|
      t.integer :user_id
      t.integer :team_id
      t.integer :division_id
      t.integer :grade
      t.boolean :is_student
      t.boolean :is_ta
      t.boolean :is_teacher

      t.timestamps
    end
  end
end
