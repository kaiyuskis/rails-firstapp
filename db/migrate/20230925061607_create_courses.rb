class CreateCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|
      t.string :name
      t.integer :credit_hours
      t.string :grade
      t.references :student, foreign_key: true
      t.timestamps
    end
  end
end
