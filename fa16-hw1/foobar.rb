class Foobar

  def self.baz(a)
    # Class method
    # Call with `Foobar.baz`
    ret_val = 0
    a.uniq.each { |i|
    	i = i.to_i
    	if i + 2 <= 10 and i % 2 == 0 then ret_val += i + 2 end
    }
    ret_val
  end
end


