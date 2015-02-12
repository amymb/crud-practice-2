class CreateHats < ActiveRecord::Migration
  def change
    create_table :hats do |t|
      t.string :style
      t.string :color
      t.boolean :hot

      t.timestamps null: false
    end
  end
end
