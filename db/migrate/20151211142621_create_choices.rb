class CreateChoices < ActiveRecord::Migration
  def change
    create_table :choices do |t|
      t.integer :question_id, { null: false }
      t.string :a, { null: false }
      t.string :b, { null: false }
      t.string :c, { null: false }
      t.string :d, { null: false }

      t.timestamps(null: false)
    end
  end
end
