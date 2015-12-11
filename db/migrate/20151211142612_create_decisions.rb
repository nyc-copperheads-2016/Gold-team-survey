class CreateDecisions < ActiveRecord::Migration
  def change
    create_table :decisions do |t|
      t.integer :round_id, { null: false }
      t.string :decision, { null: false, limit: 1 }

      t.timestamps(null: false)
    end
  end
end
