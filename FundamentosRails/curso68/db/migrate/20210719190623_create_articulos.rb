class CreateArticulos < ActiveRecord::Migration[6.1]
  def change
    create_table :articulos do |t|
      t.string :nombre
      t.string :detalle
      t.integer :precio

      t.timestamps
    end
  end
end
