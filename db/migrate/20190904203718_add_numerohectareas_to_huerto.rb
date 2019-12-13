class AddNumerohectareasToHuerto < ActiveRecord::Migration[5.1]
  def change
    add_column :huertos, :numerohectareas, :integer
  end
end
