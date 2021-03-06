class CreateLibros < ActiveRecord::Migration[6.1]
  def change
    create_table :libros do |t|
      t.string :titulo
      t.integer :paginas
      t.string :descripcion
      t.string :ISBN
      t.references :autor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
