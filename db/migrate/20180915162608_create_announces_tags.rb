class CreateAnnouncesTags < ActiveRecord::Migration[5.2]
  def change
    create_table :announces_tags do |t|
      t.references :announces, foreign_key: true
      t.references :tags, foreign_key: true
    end
  end
end
