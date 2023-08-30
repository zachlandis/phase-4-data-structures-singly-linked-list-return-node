require_relative './node'

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def nth_from_end(n)
    length = 0
    node = head
    until node.nil?
      node = node.next_node
      length += 1
    end

    
    return nil if n < 1 || n > length

    node = head
    i = 1
    while i < length - n + 1
      node = node.next_node
      i += 1
    end

    node.value
  end

end
