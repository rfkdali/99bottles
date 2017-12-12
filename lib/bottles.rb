class Bottles
  def initialize
  end

  def verse(bottles)
    @bottles = bottles
    @bottles >= 1 ? more_bottle : no_more_bottle
  end

  def verses(first_verse, last_verse)
    first_verse.downto(last_verse).map {|bottle| verse(bottle) }.join("\n")
  end

  def song
    verses(99, 0)
  end

  private

  def more_bottle
    "#{handle_plural} on the wall, #{handle_plural}.\nTake #{@it_or_one} down and pass it around, #{handle_plural(1)} on the wall.\n"
  end

  def no_more_bottle
    "No more bottles of beer on the wall, #{handle_plural}.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
  end

  def handle_plural(n=0)
    @it_or_one = @bottles == 1 ? "it" : "one"

    number_of_bottles = @bottles - n
    return "no more bottles of beer" if number_of_bottles == 0
    return "#{number_of_bottles} bottle of beer" if number_of_bottles == 1
    return "#{number_of_bottles} bottles of beer" if number_of_bottles > 1
  end
end