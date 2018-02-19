class CreateManagers < ActiveRecord::Migration[5.0]
  def change
    create_table :managers do |t|
      t.string :title
      t.text :img
      t.text :body
      t.integer :visits_count

      t.timestamps
    end
  end
end
