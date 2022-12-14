require_relative './my_enumerable'

class MyList
  include MyEnumerable
  def initialize(*list)
    @list = list
  end

  def each
    i = 0

    while @list[i]
      yield @list[i]
      i += 1
    end
  end
end

newlist = MyList.new(1, 2, 3, 4)

puts(newlist.all? { |e| e < 5 })

puts(newlist.all? { |e| e > 5 })

puts(newlist.any? { |e| e == 2 })

puts(newlist.any? { |e| e == 5 })

print newlist.filter(&:even?)
