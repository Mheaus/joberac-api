class AddExcerptToAnnounces < ActiveRecord::Migration[5.2]
  def change
    add_column :announces, :excerpt, :string
  end
end
