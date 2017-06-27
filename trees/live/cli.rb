require 'pry'

class Node
    attr_accessor :value, :children, :right_child, :left_child

    def initialize(value)
        @value = value
        @children = []
    end
    
end

def make_simple
    root = Node.new(5)
    n1 = root.left_child = Node.new(3)
    n2 = root.right_child = Node.new(8)
    n3 = n1.left_child = Node.new(1)
    n4 = n1.right_child = Node.new(4)
    n5 = n2.left_child = Node.new(7)
    n6 = n2.right_child = Node.new(10)
    return root
end

def inorder(node)
    if node.nil?
        return
    end
    inorder(node.left_child)
    binding.pry
    print("#{node.value}, ")
    inorder(node.right_child)
end

def preorder(node)
    if node.nil?
        return
    end
    print("#{node.value}, ")
    preorder(node.left_child)
    preorder(node.right_child)
end

def postorder(node)
    if node.nil?
        return
    end
    postorder(node.left_child)
    postorder(node.right_child)
    print("#{node.value}, ")
end

def bfs(root_node)
    queue = []
    queue.push(root_node)

    while queue.size > 0
        bottom = queue.shift
        queue.push(bottom.left_child) if bottom.left_child
        queue.push(bottom.right_child) if bottom.right_child
        print("#{bottom.value}, ")
    end
end

root = make_simple
bfs(root)

# binding.pry #-> access variables
# puts
# Pry.start