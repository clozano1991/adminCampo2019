class RemoveFechadocumentoFromElementoContable < ActiveRecord::Migration[5.1]
  def change
    remove_column :elemento_contables, :fechadocumento, :date
  end
end
