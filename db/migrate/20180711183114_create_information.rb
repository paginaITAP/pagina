class CreateInformation < ActiveRecord::Migration[5.0]
  def change
    create_table :information do |t|
      t.string :title
      t.text :body
      t.integer :category

      t.timestamps
    end
  end
end
