class CreatePainAmounts < ActiveRecord::Migration[5.2]
  def change
    create_table :pain_amounts do |t|
      t.integer :strength, default: 0, null: false

      t.timestamps
    end
  end
end
