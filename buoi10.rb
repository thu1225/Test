def three_numbers(arrays, target_sum)
    three_elements =[]
   

    for value1 in (0...arrays.length)
        hash = {}
        first_element = arrays[value1]
        total_two_elements = target_sum - first_element
        array_sub = arrays - [arrays[value1]]
        
        for value2 in ((value1 + 1)...array_sub.length)
            mid_element = array_sub[value2]
            last_element = total_two_elements - mid_element
                
                if hash[last_element]
                    puts "#{first_element} #{mid_element} #{last_element}"
                else
                    hash [mid_element] = true
                end
        end
    end
end

numbers = [12, 3, 1, 2, -6, 5, -8, 6]
target_sum = 0
three_numbers(numbers,target_sum)
