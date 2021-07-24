class CreateLibros < ActiveRecord::Migration[6.1]
  def change
    create_table :libros do |t|
      t.string :nombre
      t.string :descripcion
      t.string :isbn
      t.integer :edicion
      t.integer :paginas

      t.timestamps
    end
  end
end
