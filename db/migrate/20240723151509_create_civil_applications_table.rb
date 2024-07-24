class CreateCivilApplicationsTable < ActiveRecord::Migration[7.1]
  def change
    create_table :civil_applications, id: :uuid do |t|
      t.string :code
      t.string :first_name
    end
  end
end
