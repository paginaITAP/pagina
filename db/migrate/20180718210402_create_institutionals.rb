class CreateInstitutionals < ActiveRecord::Migration[5.0]
  def change
    create_table :institutionals do |t|
      t.string :title
      t.string :icon
      t.text :body
      t.integer :category

      t.timestamps
    end
  end
end
