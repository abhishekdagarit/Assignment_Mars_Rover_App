class CreateGrids < ActiveRecord::Migration
  def up
    create_table :grids do |t|
      t.integer :length
      t.integer :breadth

      t.timestamps
    end
  end
  def down
    drop_table :grids
  end
end
