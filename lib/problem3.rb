class Problem3
  class << self
    def fibonacci100
      result = [0, 1]
      while result.count < 100
        result << result[-1] + result[-2]
      end
      return result
    end
  end
end
