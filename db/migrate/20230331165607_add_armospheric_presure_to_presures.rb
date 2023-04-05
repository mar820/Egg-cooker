class AddArmosphericPresureToPresures < ActiveRecord::Migration[7.0]
  def change
    add_column :presures, :atmo_presure, :string
  end
end
