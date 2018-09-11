require("minitest/autorun")
require("minitest/rg")
require_relative("../fish")

class TestFish < Minitest::Test

  # arrange
  def setup
    @fish01 = Fish.new("Merlino")
  end

  def test_fish_name
    assert_equal("Merlino",@fish01.name)
  end



end
