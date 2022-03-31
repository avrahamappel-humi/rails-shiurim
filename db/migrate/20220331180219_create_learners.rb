class CreateLearners < ActiveRecord::Migration[6.1]
  def change
    create_table :learners do |t|
      t.string :name
      t.boolean :active
      t.belongs_to :shiur, null: false, foreign_key: true

      t.timestamps
    end
  end
end
