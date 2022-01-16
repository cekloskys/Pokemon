class CreatePokedexes < ActiveRecord::Migration[7.0]
  def change
    create_table :pokedexes do |t|
      t.string :name
      t.string :element

      t.timestamps
    end
  end
end
