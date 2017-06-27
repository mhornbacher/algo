require_relative 'node.rb'

def build_trie(patterns)
    new_index = 1
    root = Node.new(0)
    patterns.each do |pattern|
        current_node = root
        pattern.each_char do |current_symbol|
            if current_node.children_values.include?(current_symbol)
                current_node = current_node.child_by_value(current_symbol)
            else
                new_node = Node.new(current_symbol)
                current_node.children << new_node
                current_node = new_node
            end
        end
    end
    return root
end
