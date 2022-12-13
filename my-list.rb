class My_list
  attr_accessor :list
  def initialize(list)
    @list = list
  end

  def each 
    i = 0

    while @list[i]
      yield @list[i]
      i+= 1
    end
  end

end
