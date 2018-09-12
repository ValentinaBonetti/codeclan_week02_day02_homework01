require("minitest/autorun")
require("minitest/rg")
require_relative("../bear")
require_relative("../river")
require_relative("../fish")

class TestBear < Minitest::Test

  # arrange
  def setup
    @bear01 = Bear.new("Jack","Grizzly")
    @bear02 = Bear.new("Louise","White")
    @amazon = River.new("Amazon")
    @fish01 = Fish.new("Merlino")
    @fish02 = Fish.new("Anacleto")
  end

  def test_stomach_level #food_count
    @amazon.add_fish_to_river(@fish01)
    @bear01.get_fish_from_river(@amazon)
    expected = 1
    actual = @bear01.stomach_level
    assert_equal(expected,actual)
  end

  def test_get_fish_from_river
    @amazon.add_fish_to_river(@fish01)
    fishes_before = @amazon.fauna_counter
    p "fishes before: #{fishes_before}"
    @bear01.get_fish_from_river(@amazon)
    fishes_after = @amazon.fauna_counter
    p "fishes after: #{fishes_after}"
    assert_equal(1,@bear01.stomach_level)
    assert_equal(1,fishes_before-fishes_after)
  end

  def test_roar
    expected = "Roooaaarrrrr!"
    actual = @bear01.roar
    assert_equal(expected,actual)
  end

end
