class UpdatePainAmountColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :pain_amounts, :strength, :amount
  end
end
