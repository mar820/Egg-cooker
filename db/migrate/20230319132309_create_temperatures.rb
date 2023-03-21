class CreateTemperatures < ActiveRecord::Migration[7.0]
  def change
    create_table :temperatures do |t|
      t.string :fridge_temp
      t.string :room_temp

      t.timestamps
    end
  end
end
