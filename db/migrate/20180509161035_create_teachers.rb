class CreateTeachers < ActiveRecord::Migration[5.0]
  def change
    create_table :teachers do |t|
      t.string :name
      t.text :img
      t.text :body
      t.integer :visits_count

      t.timestamps
    end
  end
end
