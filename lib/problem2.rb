class Problem2
  def self.alternate list1, list2
    if list1.nil? || list1.count == 0
      list2
    elsif list2.nil? || list2.count == 0
      list1
    else
      [list1[0], list2[0]] + alternate(list1[1..-1], list2[1..-1])
    end
  end
end
