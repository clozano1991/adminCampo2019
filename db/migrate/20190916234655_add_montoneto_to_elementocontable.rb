class AddMontonetoToElementocontable < ActiveRecord::Migration[5.1]
  def change
    add_column :elemento_contables, :montoneto, :integer
  end
end
