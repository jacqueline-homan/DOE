class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :electric
      t.string :gas
      t.string :oil
      t.string :propane
      t.boolean :alt_heat
      t.string :alt_heat_fuel

      t.timestamps
    end
  end
end
