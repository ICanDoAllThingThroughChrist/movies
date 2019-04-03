class CreateMovieShowtimes < ActiveRecord::Migration[5.2]
  def change
    create_table :movie_showtimes do |t|
      t.integer :movie_id
      t.integer :theatre_id
      t.string :auditorium, :limit => 16
      t. :start_time
      t.references :movie, foreign_key: true
      t.references :theatre, foreign_key: true
 
      t.timestamps
    end
  end
end
