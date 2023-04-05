class RemoveFridgeTempFromTemperatures < ActiveRecord::Migration[7.0]
  def change
    remove_column :temperatures, :fridge_temp, :string
    remove_column :temperatures, :room_temp, :string
  end
end
