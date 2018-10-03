class AddLabelToPainAmounts < ActiveRecord::Migration[5.2]
  def change
    add_column :pain_amounts, :label, :string
  end
end
