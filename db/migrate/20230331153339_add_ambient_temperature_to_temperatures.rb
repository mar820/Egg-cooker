class AddAmbientTemperatureToTemperatures < ActiveRecord::Migration[7.0]
  def change
    add_column :temperatures, :ambient_temp, :string
  end
end
