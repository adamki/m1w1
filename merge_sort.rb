class Mergesort
values = (0..20).to_a.sample(10).each_slice(1).to_a.sort  # => [[0], [1], [4], [6], [9], [10], [13], [17], [18], [20]]

  @new_set =[]  # => []

  def self.sort(array)
    mid = (array.length/2)
    left = array[0..mid-1]
    right = array[mid..-1]

    return merge(left, right)
  end

  def self.merge(set_1, set_2)
    while set_1.empty? == false && set_2.empty? == false # loop until left/rigth both empty
      if set_1[0][0] < set_2[0][0]
        @new_set << set_1.shift
      else
        @new_set << set_2.shift
      end
    end
    #Clean up code SHOWN BELOW when one array empties faster than the other
    if set_1.empty?
    #move all the stuff from the other array
      set_2.each do |n|
        @new_set << n
      end
    end
    if set_2.empty?
      set_1.each do |n|
        @new_set << n
      end
    end
  end

  sort([values])                                                                    # ~> NameError: undefined local variable or method `values' for Mergesort:Class
puts "Here is your sorted list of #{values.length} numbers: #{@new_set.flatten}"
end

# ~> NameError
# ~> undefined local variable or method `values' for Mergesort:Class
# ~>
# ~> /Users/adamki/Turing/module1/week_1/merge_sort.rb:36:in `<class:Mergesort>'
# ~> /Users/adamki/Turing/module1/week_1/merge_sort.rb:1:in `<main>'
