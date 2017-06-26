def postOrder(node)
    return if node.nil?
    postOrder(node.left_child)
    postOrder(node.right_child)
    print "#{node.value}, "
end