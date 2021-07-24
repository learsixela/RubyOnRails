class CreateArticulos < ActiveRecord::Migration[6.1]
  def change
    create_table :articulos do |t|
      t.string :nombre
      t.string :descripcion
      t.integer :cantidad

      t.timestamps
    end
  end
end
