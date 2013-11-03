class CreateShuttles < ActiveRecord::Migration
  def change
    create_table :shuttles do |t|
      t.integer :landing_x_axis
      t.integer :landing_y_axis
      t.integer :target_x_axis
      t.integer :target_y_axis
      t.integer :grid_id

      t.timestamps
    end
  end
end
