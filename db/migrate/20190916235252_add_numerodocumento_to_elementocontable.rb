class AddNumerodocumentoToElementocontable < ActiveRecord::Migration[5.1]
  def change
    add_column :elemento_contables, :numerodocumento, :string
  end
end
