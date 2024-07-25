# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
REF_NUMBERS = %w[AB-123456 CD-987654 EF-345678]

REF_NUMBERS.each do |ref|
  app = CivilApplication.new(id: SecureRandom.uuid, reference_number: ref, employment_income: rand(50000))
  app.save!
  sleep(5)
end