class AddNombreproveedorToElementocontable < ActiveRecord::Migration[5.1]
  def change
    add_column :elemento_contables, :nombreproveedor, :string
  end
end
