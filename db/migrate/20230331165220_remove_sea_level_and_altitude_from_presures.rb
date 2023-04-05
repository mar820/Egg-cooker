class RemoveSeaLevelAndAltitudeFromPresures < ActiveRecord::Migration[7.0]
  def change
    remove_column :presures, :sea_level, :string
    remove_column :presures, :altitude, :string
  end
end
