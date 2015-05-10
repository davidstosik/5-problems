class Problem4
  def self.arrange list
    return '' if list.nil? || list.empty?
    return list[0] if list.count == 1
    list = list.map &:to_s
    list.sort! do |a, b|
      b <=> a
    end
    if list[0].start_with? list[1]
      list[0].sub! /^#{list[1]}/, ''
      list[1] + arrange(list)
    else
      list[0] + arrange(list[1..-1])
    end
  end
end
