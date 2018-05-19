class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.references :user, foreign_key: true
      t.references :admin, foreign_key: true

      t.references :news, foreign_key: true
      t.references :newspapers, foreign_key: true
      t.references :photos, foreign_key: true
      t.references :teachers, foreign_key: true
      t.references :videos, foreign_key: true

      t.text :body

      t.timestamps
    end
  end
end
