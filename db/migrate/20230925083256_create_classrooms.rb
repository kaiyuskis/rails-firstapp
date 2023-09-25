class CreateClassrooms < ActiveRecord::Migration[7.0]
  def change
    create_table :classrooms do |t|
      t.string :name
      t.integer :credit
      t.integer :grade

      t.timestamps
    end
  end
end
