class CreateAnnounces < ActiveRecord::Migration[5.2]
  def change
    create_table :announces do |t|
      t.string :title
      t.string :address
      t.text :description

      t.timestamps
    end
  end
end
