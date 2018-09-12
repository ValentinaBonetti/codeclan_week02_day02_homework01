class Bear

  def initialize(name,type)
    @name = name
    @type = type
    @stomach = []
  end

  def stomach_level
    return @stomach.length
  end

  def get_fish_from_river(river)
    if river.fauna_counter != 0
      @stomach << river.remove_fish_from_river
    end

  end

  def roar
    return "Roooaaarrrrr!"
  end

end
