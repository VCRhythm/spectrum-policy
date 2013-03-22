class CreateAgencyActions < ActiveRecord::Migration
  def change
    create_table :agency_actions do |t|
      t.string :link
      t.text :description
      t.integer :agency_id

      t.timestamps
    end
  end
end
