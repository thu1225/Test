def three_numbers(arrays, target_sum)
    three_elements =[]
   

    for i in (0..arrays.length)
        hash = {}
        first_element = arrays[i]
        total_two_elements = target_sum - first_element
        array1 = arrays -arrays[i]

        for n in (0..array1.length)
            mid_element = array1[n]
            
            array1.each do |last_element|
            if hash[total_two_elements - mid_element]
                return [last_element]
            else
                hash [last_element] = true
            end
        end
    end
    three_elements = first_element + mid_element + last_element
    puts "#{three_elements}"
end

numbers = [12, 3, -1, -2, -6, 5, -8, 6]
target_sum = 0
three_numbers(numbers,target_sum)
  
 # Anh ơi em phát triển bài toán theo hướng này, nhưng có vẻ nó đã bị sai. Anh có thể cho em xin góp ý để em làm lại ạ.
