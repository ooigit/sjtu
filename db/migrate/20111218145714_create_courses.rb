class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :code
      t.string :name
      t.string :year
      t.string :semester
      t.boolean :public
      t.boolean :open_for_apply
      t.boolean :finished

      t.timestamps
    end
  end
end
