require("minitest/autorun")
require("minitest/rg")
require_relative("../river")
require_relative("../fish")
require_relative("../bear")

class TestRiver < Minitest::Test

  # arrange
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
    @amazon.add_fish_to_river(@fish01)
    @amazon.add_fish_to_river(@fish02)
    @amazon.remove_fish_from_river
    expected = 3
    actual = @amazon.fauna_counter
    assert_equal(expected,actual)
  end



end
