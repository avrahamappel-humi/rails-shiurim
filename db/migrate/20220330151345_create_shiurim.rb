class CreateShiurim < ActiveRecord::Migration[6.1]
  def change
    create_table :shiurim do |t|
      t.string :name
      t.integer :importance
      t.decimal :time

      t.timestamps
    end
  end
end
