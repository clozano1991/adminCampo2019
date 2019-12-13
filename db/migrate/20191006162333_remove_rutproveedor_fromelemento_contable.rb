class RemoveRutproveedorFromelementoContable < ActiveRecord::Migration[5.1]
  def change
  	remove_column :elemento_contables, :rutproveedor, :string
  	remove_column :elemento_contables, :nombreproveedor, :string
  end
end
