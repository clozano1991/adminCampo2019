class AddNhectareasToHuerto < ActiveRecord::Migration[5.1]
  def change
    add_column :huertos, :nhectareas, :float
  end
end
