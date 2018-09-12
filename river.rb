class River

  attr_reader :name

  def initialize(name,fauna)
    @name = name
    @fauna = fauna
  end

  def fauna_counter
    return @fauna.length
  end

  def add_fish_to_river(fish)
    @fauna << fish
  end

  def remove_fish_from_river
    # this returns the last element of the fauna array 
    if @fauna.length != 0
      return @fauna.pop
    end
  end

end
