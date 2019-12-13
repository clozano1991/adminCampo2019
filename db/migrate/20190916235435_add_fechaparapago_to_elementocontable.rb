class AddFechaparapagoToElementocontable < ActiveRecord::Migration[5.1]
  def change
    add_column :elemento_contables, :fechaparapago, :date
  end
end
