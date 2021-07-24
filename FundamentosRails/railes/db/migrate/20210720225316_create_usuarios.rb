class CreateUsuarios < ActiveRecord::Migration[6.1]
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :apellido
      t.integer :edad
      t.string :email
      t.string :contrasena
      t.references :rol, null: false, foreign_key: true

      t.timestamps
    end
  end
end
