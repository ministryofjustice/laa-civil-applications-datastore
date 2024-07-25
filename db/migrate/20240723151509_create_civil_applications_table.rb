class CreateCivilApplicationsTable < ActiveRecord::Migration[7.1]
  def change
    create_table :civil_applications do |t|
      t.string :reference_number
      t.bigint :employment_income
    end
  end
end
