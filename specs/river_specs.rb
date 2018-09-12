require("minitest/autorun")
require("minitest/rg")
require_relative("../river")
require_relative("../fish")

class TestRiver < Minitest::Test

  # arrange (set up the input that methods need)
  def setup
    @fish01 = Fish.new("Merlino")
    @fish02 = Fish.new("Anacleto")
    fauna = [@fish01,@fish02]
    @amazon = River.new("Amazon",fauna)
  end

  def test_fauna_counter #fish_count
    expected = 2
    actual = @amazon.fauna_counter
    assert_equal(expected,actual)
  end

  def test_add_fish_to_river
    @amazon.add_fish_to_river(@fish01)
    @amazon.add_fish_to_river(@fish02)
    expected = 4
    actual = @amazon.fauna_counter
    assert_equal(expected,actual)
  end

  def test_remove_fish_from_river
    returned_fish = @amazon.remove_fish_from_river
    expected = 1
    actual = @amazon.fauna_counter
    # we need to check if a fish has been removed and
    # that a fish is actually returned by the function
    assert_equal(expected,actual)
    assert_equal(Fish,returned_fish.class)
  end

end
