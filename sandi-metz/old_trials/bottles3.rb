class BottlesSong
  def sing
    verses(99, 0)
  end

  def verses(upper_bound, lower_bound)
    upper_bound.downto(lower_bound).map {|n| verse(n) + "\n"}.join
  end

  def verse(number)
    a = BeerVerse.new(number)
    "#{a.inventory.to_s.capitalize} #{container(number)} of #{liquid} #{location}, " +
    "#{a.inventory} #{container(number)} of #{liquid}.\n" +
    "#{a.action}, " +
    "#{inventory(number-1)} #{container(number-1)} of #{liquid} #{location}.\n"
  end

  private

  def liquid
    'beer'
  end

  def location
    'on the wall'
  end

  def inventory(number)
    case number
    when -1
      99
    when 0
      'no more'
    else
      number
    end
  end

  def container(number)
    case number
    when 1
      'bottle'
    else
      'bottles'
    end
  end


end

class BeerVerse
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def inventory
    case number
    when -1
      99
    when 0
      'no more'
    else
      number
    end
  end

  def action
    case number
    when 0
      "Go to the store and buy some more"
    else
      "Take #{pronoun} down and pass it around"
    end
  end

  def pronoun
    case number
    when 1
      'it'
    else
      'one'
    end
  end

end
