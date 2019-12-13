class AddMontoivarecuperableToElementocontable < ActiveRecord::Migration[5.1]
  def change
    add_column :elemento_contables, :montoivarecuperable, :integer
  end
end
