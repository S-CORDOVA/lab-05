require "test_helper"

class AppointmentTest < ActiveSupport::TestCase
  def setup
    @owner = Owner.create!(
      first_name: "Matias",
      last_name: "Silva",
      email: "matias@test.com",
      phone: "5553333"
    )

    @pet = Pet.create!(
      name: "Rocky",
      species: "dog",
      date_of_birth: Date.today - 3.years,
      weight: 12,
      owner: @owner
    )

    @vet = Vet.create!(
      first_name: "Daniela",
      last_name: "Vega",
      email: "daniela@test.com",
      specialization: "Vaccination"
    )
  end

  test "valid appointment" do
    appointment = Appointment.new(
      date: Time.current,
      reason: "Routine check",
      pet: @pet,
      vet: @vet,
      status: :scheduled
    )
    assert appointment.valid?
  end

  test "invalid without pet" do
    appointment = Appointment.new(
      date: Time.current,
      reason: "Routine check",
      vet: @vet,
      status: :scheduled
    )
    assert_not appointment.valid?
  end
end