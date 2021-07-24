class CreateProveedors < ActiveRecord::Migration[6.1]
  def change
    create_table :proveedores do |t|
      t.string :nombre
      t.string :apellido
      t.integer :edad
      t.string :email
      t.string :contrasena

      t.timestamps
    end
  end
end
