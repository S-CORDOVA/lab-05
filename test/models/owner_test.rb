require "test_helper"

class OwnerTest < ActiveSupport::TestCase
  test "valid owner" do
    owner = Owner.new(
      first_name: "Carlos",
      last_name: "Mendez",
      email: "carlos@test.com",
      phone: "5551111"
    )
    assert owner.valid?
  end

  test "invalid without email" do
    owner = Owner.new(
      first_name: "Carlos",
      last_name: "Mendez",
      phone: "5551111"
    )
    assert_not owner.valid?
    assert_includes owner.errors[:email], "can't be blank"
  end
end