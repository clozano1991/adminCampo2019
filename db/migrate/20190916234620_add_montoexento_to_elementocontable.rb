class AddMontoexentoToElementocontable < ActiveRecord::Migration[5.1]
  def change
    add_column :elemento_contables, :montoexento, :integer
  end
end
