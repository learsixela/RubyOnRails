class CreateAutors < ActiveRecord::Migration[6.1]
  def change
    create_table :autors do |t|
      t.string :nombre
      t.string :apellido

      t.timestamps
    end
  end
end
