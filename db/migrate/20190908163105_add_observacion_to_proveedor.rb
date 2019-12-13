class AddObservacionToProveedor < ActiveRecord::Migration[5.1]
  def change
    add_column :proveedors, :observacion, :string
  end
end
