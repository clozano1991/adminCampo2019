class AddCorreoelectronicocontactoToProveedor < ActiveRecord::Migration[5.1]
  def change
    add_column :proveedors, :correoelectronicocontacto, :string
  end
end
