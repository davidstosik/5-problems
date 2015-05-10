class Problem1

  class << self
    def for_loop list
      return nil unless list.is_a? Array
      sum = 0
      list.each do |item|
        sum += item
      end
      sum
    end

    def while_loop list
      return nil unless list.is_a? Array
      i = 0
      sum = 0
      while item = list[i]
        i += 1
        sum += item
      end
      sum
    end

    def recursion list
      return nil unless list.is_a? Array
      if list.count == 0
        0
      else
        list[0] + recursion(list[1..-1])
      end
    end

  end

end
