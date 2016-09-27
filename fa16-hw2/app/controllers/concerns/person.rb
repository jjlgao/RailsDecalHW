class Person
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def nickname
    # YOUR IMPLEMENTATION HERE
    #'nickname'
    @name[0..4]
    #@name.to_s[0:4]
    # if @name.length < 4:
    #   return @name
    # else
    #   return @name[0:4]
    # end
    # truncate(@name, :length => 4)
  end

  def birth_year
    # YOUR IMPLEMENTATION HERE
    #1990
    return 2016 - @age.to_i
  end

  def introduction
    # YOUR IMPLEMENTATION HERE
    #'introduce'
    return @name.to_s + @age.to_s
  end

  def fib_number
    # YOUR IMPLMENTATION HERE
    return fn(@age.to_i)
  end

  def fn(a)
    if a == 0
      return 0
    elsif a == 1
      return 1
    elsif a == 2
      return 1
    else
      return fn(a - 1) + fn(a - 2)
    end
  end
end
