require "test_helper"

class TreatmentTest < ActiveSupport::TestCase
  test "valid treatment" do
    owner = Owner.create!(
      first_name: "Sofia",
      last_name: "Navarro",
      email: "sofia@test.com",
      phone: "5554444"
    )

    pet = Pet.create!(
      name: "Milo",
      species: "dog",
      date_of_birth: Date.today - 1.year,
      weight: 6,
      owner: owner
    )

    vet = Vet.create!(
      first_name: "Ricardo",
      last_name: "Pino",
      email: "ricardo@test.com",
      specialization: "General Medicine"
    )

    appointment = Appointment.create!(
      date: Time.current,
      reason: "Follow-up",
      pet: pet,
      vet: vet,
      status: :scheduled
    )

    treatment = Treatment.new(
      name: "Pain relief",
      administered_at: Time.current,
      appointment: appointment
    )

    assert treatment.valid?
  end

  test "invalid without appointment" do
    treatment = Treatment.new(name: "Pain relief")
    assert_not treatment.valid?
  end
end