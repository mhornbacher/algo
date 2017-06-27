
def prefixTrieMatching(text, trie)
    position = 0
    result = ""
    symbol = text[position]
    v = trie
    while true
        if v.leaf? # we have the last item
            return result
        elsif v.children_values.include?(symbol)
            result << symbol
            v = v.child_by_value(symbol)
            position += 1
            symbol = text[position]
        else
            return false
        end
    end
end

def trieMatching(text, trie)
    results = []
    text_size = text.size - 1
    while text.size > 0
        res = prefixTrieMatching(text, trie)
        text[0] = ''
        results << [res, text_size - text.size] if res
    end
    return results
end
