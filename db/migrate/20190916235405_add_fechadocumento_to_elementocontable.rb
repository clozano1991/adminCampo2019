class AddFechadocumentoToElementocontable < ActiveRecord::Migration[5.1]
  def change
    add_column :elemento_contables, :fechadocumento, :date
  end
end
