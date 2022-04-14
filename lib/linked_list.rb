require_relative './node'

class LinkedList
    attr_accessor :head

    def initialize
      @head = nil
    end

    def prepend(node)
        node.next_node = head
        self.head = node
    end

    def append(node)
        return prepend(node) unless head
        
        last_node = head
        while last_node.next_node
          last_node = last_node.next_node
        end
    
        last_node.next_node = node
      end
end
