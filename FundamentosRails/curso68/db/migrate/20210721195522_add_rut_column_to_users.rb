class AddRutColumnToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :usuarios, :rut, :integer
    add_column :usuarios, :dv, :string
  end
end
