class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :name, :limit => 256
      t.integer :length_minutes
      t.string :rating, :limit => 8

      t.timestamps
    end
  end
end
