class CreateCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :companies do |t|
      t.string :comprador
      t.string :descripcion
      t.integer :precioitem
      t.integer :totalitems
      t.string :direccionvendedor
      t.string :vendedor

      t.timestamps
    end
  end
end
