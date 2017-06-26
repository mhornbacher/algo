def inOrder(node)
    return if node.nil?
    inOrder(node.left_child)
    print "#{node.value}, "
    inOrder(node.right_child)
end
