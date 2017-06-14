def insertionSort(input_list)
    alist = input_list.clone
    (alist.length-1).times do |index|
        index += 1
        current_value = alist[index]
        position = index

        while position > 0 && alist[position - 1] > current_value do
            alist[position] = alist[position - 1]
            position -= 1
        end
        alist[position] = current_value
    end
    return alist
end

alist = [54,26,93,17,77,31,44,55,20]
list2 = insertionSort(alist)
puts(list2.inspect, alist.inspect)