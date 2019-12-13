class AddMontoivanorecuperableToElementocontable < ActiveRecord::Migration[5.1]
  def change
    add_column :elemento_contables, :montoivanorecuperable, :integer
  end
end
