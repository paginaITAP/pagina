class AddAdminAndUserIdToNews < ActiveRecord::Migration[5.0]
  def change
    add_reference :news, :admin, foreign_key: true
    add_reference :news, :user, foreign_key: true

    add_reference :newspapers, :admin, foreign_key: true
    add_reference :newspapers, :user, foreign_key: true

    add_reference :photos, :admin, foreign_key: true
    add_reference :photos, :user, foreign_key: true

    add_reference :teachers, :admin, foreign_key: true
    add_reference :teachers, :user, foreign_key: true

    add_reference :videos, :admin, foreign_key: true
    add_reference :videos, :user, foreign_key: true

  end
end
