class AddUserToAnnounces < ActiveRecord::Migration[5.2]
  def change
    add_reference :announces, :user, foreign_key: true
  end
end
