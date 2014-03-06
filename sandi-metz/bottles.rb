class BottlesSong
  def sing
    verses(99, 0)
  end

  def container
    'bottle'
  end

  def liquid
    'beer'
  end

  def location
    'on the wall'
  end

  def verses(upper_bound, lower_bound)
    upper_bound.downto(lower_bound).map {|n| verse(n) + "\n"}.join
  end

  def verse(number)
    "#{initial_phrase(number)}\n#{action(number)}, #{remaining_containter(number)}.\n"
  end

  def initial_phrase(number)
    case number
    when 0
      "No more #{container}s of #{liquid} #{location}, no more #{container}s of #{liquid}."
    when 1
      "1 #{container} of #{liquid} #{location}, 1 #{container} of #{liquid}."
    when 2
      "2 #{container}s of #{liquid} #{location}, 2 #{container}s of #{liquid}."
    else
      "#{number} #{container}s of #{liquid} #{location}, #{number} #{container}s of #{liquid}."
    end
  end

  def action(number)
    case number
    when 0
      "Go to the store and buy some more"
    when 1
      "Take it down and pass it around"
    when 2
      "Take one down and pass it around"
    else
      "Take one down and pass it around"
    end
  end

  def remaining_containter(number)
    case number
    when 0
      "99 #{container}s of #{liquid} #{location}"
    when 1
      "no more #{container}s of #{liquid} #{location}"
    when 2
      "1 #{container} of #{liquid} #{location}"
    else
      "#{number-1} #{container}s of #{liquid} #{location}"
    end

  end


end
