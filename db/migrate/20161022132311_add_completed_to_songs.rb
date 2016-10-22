class AddCompletedToSongs < ActiveRecord::Migration[5.0]
  def change
    add_column :songs, :completed, :boolean
  end
end
