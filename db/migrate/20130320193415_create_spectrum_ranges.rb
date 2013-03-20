class CreateSpectrumRanges < ActiveRecord::Migration
  def change
    create_table :spectrum_ranges do |t|
      t.integer :low
      t.integer :high
      t.integer :issue_id
      t.string :name

      t.timestamps
    end
  end
end
