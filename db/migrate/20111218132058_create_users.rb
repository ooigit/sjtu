class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :sjtu_id
      t.string :class_id
      t.string :name
      t.string :phone
      t.string :grade
      t.string :gender
      t.date :birthday
      t.string :hometown
      t.string :nationality
      t.string :political_status
      t.string :identification_number
      t.boolean :is_teacher, :default => false
      t.boolean :is_ta, :default => false
      t.boolean :is_student, :default => false
      t.boolean :is_administrator, :default => false

      t.timestamps
    end
  end
end
