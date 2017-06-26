class Node
    attr_accessor :children, :value

    def initialize(value)
        @value = value
        @children = []
    end

    def children_values
        @children.collect{|c| c.value}
    end
    
    def child_by_value(val)
        @children.detect{|c| c.value == val}
    end
    
end
