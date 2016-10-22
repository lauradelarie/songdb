class CreateSearches < ActiveRecord::Migration[5.0]
  def change
    create_table :searches do |t|
      t.string :keywords
      t.string :album
      t.integer :min_year
      t.integer :max_year

      t.timestamps
    end
  end
end
