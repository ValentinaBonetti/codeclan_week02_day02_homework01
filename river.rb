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
    if @fauna.length != 0
      removed_fish = @fauna[0]
      @fauna.delete_at(0)
      return removed_fish
    end
  end

end
