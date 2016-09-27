class Foobar
  attr_accessor :param
  # ENTER CODE FOR Q2 HERE
  def initialize(param)
    @param = param
  end

  def bar(a, b)
  	puts a
  	puts b
  	return a.to_s + @param.to_s + b[b.keys[0]].to_s
  end
end
