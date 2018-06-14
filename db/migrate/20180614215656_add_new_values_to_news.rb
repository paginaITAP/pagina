class AddNewValuesToNews < ActiveRecord::Migration[5.0]
  def change
    add_column :news, :category, :integer
  end
end
