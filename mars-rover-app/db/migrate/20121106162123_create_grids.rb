class CreateGrids < ActiveRecord::Migration
  def change
    create_table :grids do |t|
      t.integer :x_axis
      t.integer :y_axis
      t.text :description

      t.timestamps
    end
  end
end
