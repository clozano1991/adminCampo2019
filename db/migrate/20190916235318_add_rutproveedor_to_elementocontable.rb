class AddRutproveedorToElementocontable < ActiveRecord::Migration[5.1]
  def change
    add_column :elemento_contables, :rutproveedor, :string
  end
end
