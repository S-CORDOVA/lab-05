require "test_helper"

class VetTest < ActiveSupport::TestCase
  test "valid vet" do
    vet = Vet.new(
      first_name: "Fernanda",
      last_name: "Castillo",
      email: "fer@test.com",
      specialization: "General Medicine"
    )
    assert vet.valid?
  end

  test "invalid without email" do
    vet = Vet.new(
      first_name: "Fernanda",
      last_name: "Castillo",
      specialization: "General Medicine"
    )
    assert_not vet.valid?
  end
end