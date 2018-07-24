class DropTalents < ActiveRecord::Migration[5.0]
  def change
    drop_table :talents
  end
end
