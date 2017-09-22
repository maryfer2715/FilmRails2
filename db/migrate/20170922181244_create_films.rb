class CreateFilms < ActiveRecord::Migration
  def change
    create_table :films do |t|
      t.string :title
      t.string :year
      t.integer :raiting
      t.text :description
      t.string :cover

      t.timestamps null: false
    end
  end
end
