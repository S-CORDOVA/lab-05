require "test_helper"

class PetTest < ActiveSupport::TestCase
  def setup
    @owner = Owner.create!(
      first_name: "Valentina",
      last_name: "Rojas",
      email: "vale@test.com",
      phone: "5552222"
    )
  end

  test "valid pet" do
    pet = Pet.new(
      name: "Luna",
      species: "dog",
      date_of_birth: Date.today - 2.years,
      weight: 8,
      owner: @owner
    )
    assert pet.valid?
  end

  test "invalid species" do
    pet = Pet.new(
      name: "Luna",
      species: "lion",
      date_of_birth: Date.today - 2.years,
      weight: 8,
      owner: @owner
    )
    assert_not pet.valid?
  end
end