class CreateGrids < ActiveRecord::Migration
  def change
    create_table :grids do |t|
      t.integer :grid_x
      t.integer :grid_y

      t.timestamps
    end
  end
end
