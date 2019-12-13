class AddNplantasToHuerto < ActiveRecord::Migration[5.1]
  def change
    add_column :huertos, :nplantas, :integer
  end
end
