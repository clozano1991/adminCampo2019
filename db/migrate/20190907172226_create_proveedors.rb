class CreateProveedors < ActiveRecord::Migration[5.1]
  def change
    create_table :proveedors do |t|
      t.references :campo, foreign_key: true
      t.string :razonsocial
      t.string :rut
      t.string :tipoproductoservicio
      t.string :direccion
      t.string :nombrecontacto
      t.string :telefonocontacto
      t.string :parapagobanco
      t.string :parapagotipocuentabancaria
      t.string :parapagonumerocuentabancaria
      t.string :parapagonombreasociadoacuentabancaria
      t.string :parapagorutasociadoacuentabancaria

      t.timestamps
    end
  end
end
