require 'pry'
require_relative 'depth/inorder'
require_relative 'depth/preorder'
require_relative 'depth/postorder'
require_relative 'breadth/breadth_first'

class Node
    attr_accessor :parent, :left_child, :right_child, :value
    
    def initialize(value, parent=nil)
        @value = value
        @parent = parent
    end
end

# Create a basic Tree
def make_simple
    root = Node.new(5)
    n1 = root.left_child = Node.new(3, root)
    n2 = root.right_child = Node.new(8, root)
    n3 = n1.left_child = Node.new(1, n1)
    n4 = n1.right_child = Node.new(4, n1)
    n5 = n2.left_child = Node.new(7, n2)
    n6 = n2.right_child = Node.new(10, n2)
    return root
end

Pry.start