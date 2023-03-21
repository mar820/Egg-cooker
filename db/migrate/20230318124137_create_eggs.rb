class CreateEggs < ActiveRecord::Migration[7.0]
  def change
    create_table :eggs do |t|
      t.string :size

      t.timestamps
    end
  end
end
