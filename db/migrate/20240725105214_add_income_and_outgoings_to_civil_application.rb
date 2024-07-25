class AddIncomeAndOutgoingsToCivilApplication < ActiveRecord::Migration[7.1]
  def change
    add_column :civil_applications, :housing_amount, :bigint
    add_column :civil_applications, :housing_frequency, :string
    add_column :civil_applications, :employment_income_amount, :bigint
    add_column :civil_applications, :employment_income_frequency, :string
    add_column :civil_applications, :savings_amount, :bigint
    remove_column :civil_applications, :employment_income, :bigint
  end
end
