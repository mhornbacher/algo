def insertionSort(input_list)
    alist = input_list.clone # copy the array to sort its values. If this is not done it WILL sort in place (modify the list that was passed in)
    1.upto(alist.size - 1) do |index| # from index 1 to the last do the following
        current_value = alist[index] # the value of the item we are sorting
        position = index # its index in the array

         # while we are not at the begining of the array or the previous value is greater then this one (a.k.a it is in the wrong position)
        while position > 0 && alist[position - 1] > current_value do
            alist[position] = alist[position - 1] # move the previous item up one
            position -= 1 # and move the index of our item back
        end
        alist[position] = current_value # set the value of the final position to the correct value (it will either not change or be a duplicate of alist[position+1])
        # puts alist.inspect # uncomment this to see how insertion sort works on each iteration
    end
    return alist # return the new list
end

alist = [54,26,93,17,77,31,44,55,20]
list2 = insertionSort(alist)
puts  "inital: ", alist.inspect, "Sorted: ", list2.inspect