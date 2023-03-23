class CreatePresures < ActiveRecord::Migration[7.0]
  def change
    create_table :presures do |t|
      t.string :sea_level
      t.string :altitude

      t.timestamps
    end
  end
end
