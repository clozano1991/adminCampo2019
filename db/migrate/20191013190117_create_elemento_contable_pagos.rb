class CreateElementoContablePagos < ActiveRecord::Migration[5.1]
  def change
    create_table :elemento_contable_pagos do |t|
      t.date :fecha
      t.integer :montopagado
      t.string :metodopago
      t.string :observacion
      t.references :elemento_contable, foreign_key: true

      t.timestamps
    end
  end
end
