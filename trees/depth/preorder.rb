def preOrder(node)
    return if node.nil?
    print "#{node.value}, "
    preOrder(node.left_child)
    preOrder(node.right_child)
end