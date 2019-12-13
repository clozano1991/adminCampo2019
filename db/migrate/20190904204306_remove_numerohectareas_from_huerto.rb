class RemoveNumerohectareasFromHuerto < ActiveRecord::Migration[5.1]
  def change
    remove_column :huertos, :numerohectareas, :integer
  end
end
