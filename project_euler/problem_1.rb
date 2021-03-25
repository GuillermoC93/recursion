# iteration

def itr_multiples
  array = []
  for n in (1..1000)
    if (n % 3).zero?
      array << n
    elsif (n % 5).zero?
      array << n
    end
  end
  array.reduce { |sum, n| sum += n }
end

p itr_multiples

def multiples

end