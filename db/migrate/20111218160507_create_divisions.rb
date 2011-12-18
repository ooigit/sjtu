class CreateDivisions < ActiveRecord::Migration
  def change
    create_table :divisions do |t|
      t.integer :course_id
      t.integer :parent_id
      t.string :description

      t.timestamps
    end
  end
end
