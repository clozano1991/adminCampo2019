class AddTipodocumentoToElementocontable < ActiveRecord::Migration[5.1]
  def change
    add_column :elemento_contables, :tipodocumento, :string
  end
end
