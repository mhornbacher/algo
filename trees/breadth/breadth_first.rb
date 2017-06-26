def breadthFirst(root_node)
    queue = [] #use push and shift
    queue.push(root_node)

    while queue.size > 0
        node = queue.shift
        print "#{node.value}, "
        queue.push(node.left_child) unless node.left_child.nil?
        queue.push(node.right_child) unless node.right_child.nil?
    end
end
