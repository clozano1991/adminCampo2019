class AddProveedorToElementoContable < ActiveRecord::Migration[5.1]
  def change
    add_reference :elemento_contables, :proveedor, foreign_key: true
  end
end
